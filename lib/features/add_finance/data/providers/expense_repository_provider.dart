import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/features/add_finance/domain/repositories/expense_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final expenseRepositoryProvider = Provider<ExpenseRepository>(
  (ref) => getIt<ExpenseRepository>(),
);
