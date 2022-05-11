// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const AllFeed = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'AllFeed'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'feedItems'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'FeedResponse'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [AllFeed, _i2.FeedResponse, _i3.AssetResponse]);
