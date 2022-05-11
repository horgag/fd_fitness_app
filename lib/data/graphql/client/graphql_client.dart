import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../api/constants.dart';

class GraphQlClient {
  final HttpLink _link = HttpLink(baseUrl);

  late final Client client;

  /// Initialises [client] with setting cahche store
  Future<void> initClient() async {
    await Hive.initFlutter();
    final dynamic box = await Hive.openBox<dynamic>('graphql');
    final HiveStore store = HiveStore(box);
    client = Client(
      link: _link,
      cache: Cache(store: store),
      defaultFetchPolicies: <OperationType, FetchPolicy>{
        OperationType.query: FetchPolicy.NetworkOnly,
      },
    );
  }

  void dispose() {
    Log().i('GraphQlClient.dispose');
    client.dispose();
  }
}
