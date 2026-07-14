import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/errors/failure.dart';

Future<T> guardRepositoryCall<T>(Future<T> Function() action) async {
  try {
    return await action();
  } on Failure {
    rethrow;
  } on DioException catch (error) {
    throw mapDioException(error);
  } catch (_) {
    throw const UnexpectedFailure();
  }
}

Failure mapDioException(DioException error) {
  if (_isNetworkError(error.type)) {
    return const NetworkFailure();
  }

  final statusCode = error.response?.statusCode;
  final message = _extractMessage(error.response?.data);

  return switch (statusCode) {
    400 || 422 => ValidationFailure(message ?? 'Invalid data', statusCode),
    401 || 403 => UnauthorizedFailure(
      message ?? 'Authentication required',
      statusCode,
    ),
    404 => NotFoundFailure(message ?? 'Resource not found'),
    409 => ConflictFailure(message ?? 'Resource already exists'),
    final code? when code >= 500 => ServerFailure(
      message ?? 'Server error',
      code,
    ),
    _ => UnexpectedFailure(message ?? 'Unexpected request error'),
  };
}

bool _isNetworkError(DioExceptionType type) {
  return switch (type) {
    DioExceptionType.connectionTimeout ||
    DioExceptionType.sendTimeout ||
    DioExceptionType.receiveTimeout ||
    DioExceptionType.connectionError => true,
    _ => false,
  };
}

String? _extractMessage(Object? data) {
  if (data is String && data.trim().isNotEmpty) return data;
  if (data is! Map) return null;

  for (final key in const ['message', 'detail', 'error']) {
    final value = data[key];
    if (value is String && value.trim().isNotEmpty) return value;
    if (value is List && value.isNotEmpty) return value.first.toString();
  }

  return null;
}
