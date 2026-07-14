import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/data/repositories/expense_list_notifier.dart';
import 'package:financial_ccounting/features/add_finance/data/repositories/expense_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final expenseListProvider =
    StateNotifierProvider<
      ExpenseListNotifier,
      AsyncValue<List<GetExpenseModel>>
    >((ref) {
      return ExpenseListNotifier(getIt<ExpenseRepository>());
    });
