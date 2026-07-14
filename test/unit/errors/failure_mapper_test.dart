import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/errors/failure.dart';
import 'package:financial_ccounting/core/errors/failure_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('mapDioException', () {
    test('maps connection errors to NetworkFailure', () {
      final failure = mapDioException(
        DioException(
          requestOptions: RequestOptions(path: '/expenses'),
          type: DioExceptionType.connectionError,
        ),
      );

      expect(failure, isA<NetworkFailure>());
    });

    test('maps 401 to UnauthorizedFailure', () {
      final failure = mapDioException(_responseError(401));

      expect(failure, isA<UnauthorizedFailure>());
      expect(failure.statusCode, 401);
    });

    test('maps 422 and preserves API message', () {
      final failure = mapDioException(
        _responseError(422, data: {'message': 'Invalid amount'}),
      );

      expect(failure, isA<ValidationFailure>());
      expect(failure.message, 'Invalid amount');
    });

    test('maps 404 to NotFoundFailure', () {
      expect(mapDioException(_responseError(404)), isA<NotFoundFailure>());
    });

    test('maps server errors to ServerFailure', () {
      final failure = mapDioException(_responseError(503));

      expect(failure, isA<ServerFailure>());
      expect(failure.statusCode, 503);
    });
  });
}

DioException _responseError(int statusCode, {Object? data}) {
  final options = RequestOptions(path: '/test');
  return DioException(
    requestOptions: options,
    response: Response(
      requestOptions: options,
      statusCode: statusCode,
      data: data,
    ),
    type: DioExceptionType.badResponse,
  );
}
