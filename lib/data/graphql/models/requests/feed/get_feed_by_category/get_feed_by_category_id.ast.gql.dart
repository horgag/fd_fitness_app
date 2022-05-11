// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const FeedByCategoryId = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'FeedByCategoryId'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'categoryID')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'feedItems'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'where'),
                value: _i1.ObjectValueNode(fields: [
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'categories_some'),
                      value: _i1.ObjectValueNode(fields: [
                        _i1.ObjectFieldNode(
                            name: _i1.NameNode(value: 'id'),
                            value: _i1.VariableNode(
                                name: _i1.NameNode(value: 'categoryID')))
                      ]))
                ]))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'FeedResponse'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [FeedByCategoryId, _i2.FeedResponse, _i3.AssetResponse]);
