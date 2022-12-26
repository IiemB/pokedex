class Failure {
  Failure(dynamic message) : message = message?.toString() ?? 'Undifined Error';

  final String message;
}
