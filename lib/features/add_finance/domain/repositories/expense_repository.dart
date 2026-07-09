import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';

abstract interface class ExpenseRepository {
  Future<ExpensePaginationModel> getExpense({int limit = 10, int offset = 0});
  Future<void> postExpense(CreateExpenseModel expense);
  Future<void> deleteExpense(int consuptionId);
  Future<void> editExpense(int consuptionId, UpdateExpenseModel updateExpense);
}
