import 'package:financial_ccounting/core/errors/failure.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/domain/repositories/expense_repository.dart';

class CreateExpensesUseCase {
  final ExpenseRepository repository;

  CreateExpensesUseCase({required this.repository});

  Future<void> call(CreateExpenseModel expense) {
    return repository.postExpense(expense);
  }
}

class DeleteExpensesUseCase {
  final ExpenseRepository repository;

  DeleteExpensesUseCase({required this.repository});

  Future<void> call(int expenseId) {
    if (expenseId <= 0) {
      throw const ValidationFailure('Invalid expense id');
    }
    return repository.deleteExpense(expenseId);
  }
}

class EditExpensesUseCase {
  final ExpenseRepository repository;

  EditExpensesUseCase({required this.repository});

  Future<void> call(int expenseId, UpdateExpenseModel expense) {
    if (expenseId <= 0) {
      throw const ValidationFailure('Invalid expense id');
    }
    return repository.editExpense(expenseId, expense);
  }
}

class GetExpensesUseCase {
  final ExpenseRepository repository;

  GetExpensesUseCase({required this.repository});

  Future<ExpensePaginationModel> call({int limit = 10, int offset = 0}) {
    return repository.getExpense(limit: limit, offset: offset);
  }
}
