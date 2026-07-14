import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/errors/failure_mapper.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/domain/repositories/expense_repository.dart';

class ExpenseRepositoryImpl implements ExpenseRepository {
  final Dio dio;
  ExpenseRepositoryImpl({required this.dio});

  @override
  Future<void> postExpense(CreateExpenseModel expense) =>
      guardRepositoryCall(() async {
        await dio.post(
          '/consumptions/',
          data: expense.toJson(),
          options: Options(contentType: Headers.jsonContentType),
        );
      });

  @override
  Future<ExpensePaginationModel> getExpense({int limit = 10, int offset = 0}) =>
      guardRepositoryCall(() async {
        final response = await dio.get(
          '/consumptions/',
          queryParameters: {"limit": limit, "offset": offset},
        );
        return ExpensePaginationModel.fromJson(response.data);
      });

  @override
  Future<void> deleteExpense(int consuptionId) =>
      guardRepositoryCall(() => dio.delete('/consumptions/$consuptionId/'));

  @override
  Future<void> editExpense(
    int consuptionId,
    UpdateExpenseModel updateExpense,
  ) => guardRepositoryCall(() async {
    final data = updateExpense.toJson()
      ..removeWhere((key, value) => value == null);
    await dio.patch('/consumptions/$consuptionId/', data: data);
  });
}
