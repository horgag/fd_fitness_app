
import 'package:package_info/package_info.dart';

class AppVersionService {
  factory AppVersionService() {
    if (_instance == null) throw Exception('Use VersionHelper.init(...) before accesing it.');
    return _instance!;
  }

  AppVersionService.init(PackageInfo packageInfo) {
    _instance = this;
    _packageInfo = packageInfo;
  }

  static AppVersionService? _instance;
  static PackageInfo? _packageInfo;

  String getVersion() {
    return _packageInfo!.version;
  }
}