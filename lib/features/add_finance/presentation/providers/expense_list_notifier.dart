import 'package:financial_ccounting/features/add_finance/domain/usecases/expenses_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../data/models/expense_model/expense_model.dart';

class ExpenseListNotifier
    extends StateNotifier<AsyncValue<List<GetExpenseModel>>> {
  final GetExpensesUseCase getExpensesUseCase;

  ExpenseListNotifier(this.getExpensesUseCase)
    : super(const AsyncValue.loading()) {
    loadInitial();
  }

  int offset = 0;
  final int limit = 10;
  bool hasNext = true;
  bool isLoading = false;

  Future<void> loadInitial() async {
    offset = 0;
    hasNext = true;
    state = AsyncValue.loading();

    try {
      final response = await getExpensesUseCase.call(limit: limit, offset: 0);
      offset = response.result.length;
      hasNext = response.hasNext;
      state = AsyncValue.data(response.result);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> loadMore() async {
    if (!hasNext || isLoading) return;
    isLoading = true;

    try {
      final response = await getExpensesUseCase.call(
        limit: limit,
        offset: offset,
      );
      offset += response.result.length;
      hasNext = response.hasNext;
      final currentList = state.value ?? [];
      state = AsyncValue.data([...currentList, ...response.result]);
    } catch (e, _) {
      // state = AsyncValue.error(e, st);
      return;
    } finally {
      isLoading = false;
    }
  }
}
