// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const GetCategoryByType = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetCategoryByType'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable:
              _i1.VariableNode(name: _i1.NameNode(value: 'categoryTitle')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CategoryTitle'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'categories'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'where'),
                value: _i1.ObjectValueNode(fields: [
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'categoryTitle'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'categoryTitle')))
                ]))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CategoryFeed'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [GetCategoryByType, _i2.CategoryFeed, _i3.AssetResponse]);
