import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/constants/api_constants.dart';
import 'package:financial_ccounting/core/data/user_repository_impl.dart';
import 'package:financial_ccounting/core/domain/user_repository.dart';
import 'package:financial_ccounting/core/services/auth_interceptor.dart';
import 'package:financial_ccounting/core/services/token_storage.dart';
import 'package:financial_ccounting/features/add_finance/data/repositories/expense_repository_impl.dart';
import 'package:financial_ccounting/features/add_finance/domain/repositories/expense_repository.dart';
import 'package:financial_ccounting/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:financial_ccounting/features/auth/domain/repositories/auth_repository.dart';
import 'package:financial_ccounting/features/main_finance/data/repositories/category_repository_impl.dart';
import 'package:financial_ccounting/features/main_finance/domain/repositories/category_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies({
  required Future<void> Function() onUnauthorized,
}) async {
  getIt.registerLazySingleton<TokenStorage>(TokenStorage.new);

  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: kBaseUrl,
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        sendTimeout: Duration(seconds: 30),
      ),
    );
    dio.interceptors.add(
      AuthInterceptor(
        dio: dio,
        storage: getIt<TokenStorage>(),
        onUnauthorized: onUnauthorized,
      ),
    );

    return dio;
  });

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(dio: getIt<Dio>(), storage: getIt<TokenStorage>()),
  );

  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(dio: getIt<Dio>()),
  );
  getIt.registerLazySingleton<ExpenseRepository>(
    () => ExpenseRepositoryImpl(dio: getIt<Dio>()),
  );
  getIt.registerLazySingleton<CategoryRepository>(
    () => CategoryRepositoryImpl(dio: getIt<Dio>()),
  );
}
