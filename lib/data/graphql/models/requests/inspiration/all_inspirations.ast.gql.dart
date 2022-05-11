// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const AllInspirations = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'AllInspirations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'inspirationItems'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'InspirationResponse'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [AllInspirations, _i2.InspirationResponse, _i3.AssetResponse]);
