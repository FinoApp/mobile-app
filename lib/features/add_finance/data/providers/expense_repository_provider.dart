import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/data/repositories/expense_list_notifier.dart';
import 'package:financial_ccounting/features/add_finance/data/repositories/expense_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final expenseRepositoryProvider = Provider(
  (ref) => ExpenseRepositoryImpl(dio: ref.read(dioProvider)),
);

final expenseListProvider =
    StateNotifierProvider<
      ExpenseListNotifier,
      AsyncValue<List<GetExpenseModel>>
    >((ref) {
      return ExpenseListNotifier(ref.watch(expenseRepositoryProvider));
    });
