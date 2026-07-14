import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/features/main_finance/domain/repositories/category_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) => getIt<CategoryRepository>(),
);
