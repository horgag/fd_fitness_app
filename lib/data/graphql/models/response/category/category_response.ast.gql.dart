// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const CategoryFeed = _i1.FragmentDefinitionNode(
    name: _i1.NameNode(value: 'CategoryFeed'),
    typeCondition: _i1.TypeConditionNode(
        on: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Category'), isNonNull: false)),
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'categoryTitle'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'mainImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'AssetResponse'), directives: [])
          ]))
    ]));
const document =
    _i1.DocumentNode(definitions: [CategoryFeed, _i2.AssetResponse]);
