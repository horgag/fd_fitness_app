import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:fd_fitness_app/data/food_api/models/api_response.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:path_provider/path_provider.dart';

class DioClient {
  factory DioClient() {
    if (_instance == null) {
      throw Exception('Use DioClient.init(...) before accesing it.');
    }
    return _instance!;
  }

  DioClient.init(String baseUrl) {
    if (_instance == null) {
      _client.options.baseUrl = baseUrl;
      _client.options.contentType = ContentType.json.toString();
      _client.options.headers['Accept'] = ContentType.json.toString();
      _client.options.connectTimeout = 10000; //10s
      _client.options.receiveTimeout = 20000;
      _instance = this;
    }
  }

  static DioClient? _instance;
  late final Dio _client = Dio();
  bool _cookiesLoaded = false;

  void dispose() {
    _client.close();
  }

  Future<void> initCookies() async {
    if (_cookiesLoaded) return;
    final Directory flutterAppDir = await getApplicationDocumentsDirectory();
    final String flutterAppCookieDirPath = '${flutterAppDir.path}/.cookies/';
    _client.interceptors.add(
      CookieManager(
        PersistCookieJar(storage: FileStorage(flutterAppCookieDirPath)),
      ),
    );
    _cookiesLoaded = true;
  }

  Future<ApiResponse?> httpCall(
    String path,
    HTTP_METHOD httpMethod, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    FormData? formData,
  }) async {
    try {
      Response<Map<String, dynamic>> response;
      switch (httpMethod) {
        case HTTP_METHOD.GET:
          response = await _client.get(path, queryParameters: queryParameters);
          break;
        case HTTP_METHOD.POST:
          response = await _client.post(path, data: formData ?? data, queryParameters: queryParameters);
          break;
        case HTTP_METHOD.PATCH:
          response = await _client.patch(path, data: formData ?? data);
          break;
        case HTTP_METHOD.DELETE:
          response = await _client.delete(path, queryParameters: queryParameters);
          break;
        case HTTP_METHOD.PUT:
          response = await _client.put(path, queryParameters: queryParameters, data: formData ?? data);
          break;
      }
      _logResponse(response);
      return ApiResponse(response);
    } on DioError catch (e) {
      return Future<ApiResponse>.error(_getAndPrintHttpError(e));
    }
  }

  ApiError _getAndPrintHttpError(DioError e) {
    final ApiError ex = ApiError.fromDioError(e);
    Log().e(ex);
    return ex;
  }

  void _logResponse(Response<Map<String, dynamic>>? response) {
    Log().d('Response: ${response?.toString()}');
  }
}

enum HTTP_METHOD { GET, POST, PATCH, DELETE, PUT }
