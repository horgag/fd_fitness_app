import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';

import 'package:fd_fitness_app/data/graphql/exceptions/fd_graphql_exception.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.var.gql.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/inspiration/inspiration_repository.dart';
import 'package:fd_fitness_app/domain/models/inspiration/inspiration.dart';

class InspirationRepositoryImpl implements InspirationRepository {
  InspirationRepositoryImpl(this.client) : mapper = getIt<Mapper<GAllInspirationsData_inspirationItems, Inspiration>>();

  final TypedLink client;
  final Mapper<GAllInspirationsData_inspirationItems, Inspiration> mapper;

  @override
  Future<BuiltList<Inspiration>?> getInspirations() => client.request(GAllInspirationsReq()).first.then(
        (OperationResponse<GAllInspirationsData, GAllInspirationsVars> event) {
          return event.hasErrors ? throw FdGraphqlException(event) : event.data?.inspirationItems.map(mapper.map).toBuiltList();
        },
      );
}
