import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:financial_ccounting/features/add_finance/data/repositories/expense_repository_impl.dart';
import 'package:financial_ccounting/features/add_finance/domain/repositories/expense_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final expenseRepositoryProvider = Provider<ExpenseRepository>(
  (ref) => ExpenseRepositoryImpl(dio: ref.watch(dioProvider)),
);
