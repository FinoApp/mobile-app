sealed class Failure implements Exception {
  final String message;
  final int? statusCode;

  const Failure(this.message, {this.statusCode});

  @override
  String toString() => message;
}

final class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection']);
}

final class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([
    super.message = 'Authentication required',
    int? statusCode,
  ]) : super(statusCode: statusCode);
}

final class ValidationFailure extends Failure {
  const ValidationFailure([super.message = 'Invalid data', int? statusCode])
    : super(statusCode: statusCode);
}

final class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Resource not found'])
    : super(statusCode: 404);
}

final class ConflictFailure extends Failure {
  const ConflictFailure([super.message = 'Resource already exists'])
    : super(statusCode: 409);
}

final class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error', int? statusCode])
    : super(statusCode: statusCode);
}

final class UnexpectedFailure extends Failure {
  const UnexpectedFailure([super.message = 'Unexpected error']);
}
