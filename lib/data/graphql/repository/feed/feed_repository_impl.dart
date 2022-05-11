import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';

import 'package:fd_fitness_app/data/graphql/exceptions/fd_graphql_exception.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.var.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.var.gql.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/feed/feed_repository.dart';
import 'package:fd_fitness_app/domain/models/feed/feed.dart';

class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl(this.client)
      : allFeedMapper = getIt<Mapper<GAllFeedData_feedItems, Feed>>(),
        feedByCategoryIdMapper = getIt<Mapper<GFeedByCategoryIdData_feedItems, Feed>>();

  final TypedLink client;
  final Mapper<GAllFeedData_feedItems, Feed> allFeedMapper;
  final Mapper<GFeedByCategoryIdData_feedItems, Feed> feedByCategoryIdMapper;

  @override
  Future<BuiltList<Feed>?> getAllFeed() => client.request(GAllFeedReq()).first.then(
        (OperationResponse<GAllFeedData, GAllFeedVars> event) {
          return event.hasErrors ? throw FdGraphqlException(event) : event.data?.feedItems.map(allFeedMapper.map).toBuiltList();
        },
      );

  @override
  Future<BuiltList<Feed>?> getFeedByCategoryId(String id) =>
      client.request(GFeedByCategoryIdReq((GFeedByCategoryIdReqBuilder b) => b..vars.categoryID = id)).first.then(
        (OperationResponse<GFeedByCategoryIdData, GFeedByCategoryIdVars> event) {
          return event.hasErrors ? throw FdGraphqlException(event) : event.data?.feedItems.map(feedByCategoryIdMapper.map).toBuiltList();
        },
      );
}
