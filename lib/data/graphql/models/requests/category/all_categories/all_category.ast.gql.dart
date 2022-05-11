// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const AllCategories = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'AllCategories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'categories'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CategoryFeed'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [AllCategories, _i2.CategoryFeed, _i3.AssetResponse]);
