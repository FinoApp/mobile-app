import 'package:dio/dio.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';

class ExpenseRepositoryImpl {
  final Dio dio;
  ExpenseRepositoryImpl({required this.dio});

  Future<void> postExpense(CreateExpenseModel expense) async {
    await dio.post(
      '/consumptions/',
      data: expense.toJson(),
      options: Options(contentType: Headers.jsonContentType),
    );
  }

  Future<ExpensePaginationModel> getExpense({
    int limit = 10,
    int offset = 0,
  }) async {
    final response = await dio.get(
      '/consumptions/',
      queryParameters: {"limit": limit, "offset": offset},
    );
    return ExpensePaginationModel.fromJson(response.data);
  }

  Future<void> deleteExpense(int consuptionId) async {
    await dio.delete('/consumptions/$consuptionId/');
  }

  Future<void> editExpense(
    int consuptionId,
    UpdateExpenseModel updateExpense,
  ) async {
    final data = updateExpense.toJson()
      ..removeWhere((key, value) => value == null);
    await dio.patch('/consumptions/$consuptionId/', data: data);
  }
}
