import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/add_finance/presentation/providers/expense_list_notifier.dart';
import 'package:financial_ccounting/features/add_finance/domain/usecases/expenses_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final expenseListProvider =
    StateNotifierProvider<
      ExpenseListNotifier,
      AsyncValue<List<GetExpenseModel>>
    >((ref) {
      return ExpenseListNotifier(ref.watch(getExpenseUseCaseProvider));
    });

final createExpenseUseCaseProvider = Provider<CreateExpensesUseCase>(
  (ref) =>
      CreateExpensesUseCase(repository: ref.watch(expenseRepositoryProvider)),
);

final deleteExpenseUseCaseProvider = Provider<DeleteExpensesUseCase>(
  (ref) =>
      DeleteExpensesUseCase(repository: ref.watch(expenseRepositoryProvider)),
);
final editExpenseUseCaseProvider = Provider<EditExpensesUseCase>(
  (ref) =>
      EditExpensesUseCase(repository: ref.watch(expenseRepositoryProvider)),
);

final getExpenseUseCaseProvider = Provider<GetExpensesUseCase>(
  (ref) => GetExpensesUseCase(repository: ref.watch(expenseRepositoryProvider)),
);
