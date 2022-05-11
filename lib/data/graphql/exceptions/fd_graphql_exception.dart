import 'package:ferry/ferry.dart';

class FdGraphqlException implements Exception {
  const FdGraphqlException(this.event);
  final OperationResponse<dynamic, dynamic> event;

  @override
  String toString() => 'GraphqlErrors: ${event.graphqlErrors}, LinkException: ${event.linkException}';
}
