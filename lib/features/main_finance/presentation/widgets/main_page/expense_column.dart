import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/main_page/bottom_modal.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/main_page/expenses_contrainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpenseColumn extends ConsumerWidget {
  const ExpenseColumn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getListExpense = ref.watch(expenseListProvider);
    final currency = ref.watch(currencyProvider);
    return getListExpense.when(
      data: (expenses) {
        return expenses.isEmpty
            ? Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 20,
                  vertical: 26,
                ),
                child: Center(
                  child: Text(
                    'No expenses yet...',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ),
              )
            : ListView.builder(
                shrinkWrap: true,
                itemCount: expenses.length > 7 ? 7 : expenses.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final expense = expenses[index];
                  final color = expense.category.color;
                  return ExpensesContrainer(
                    currency: currency.symbol,
                    color: Color(
                      int.parse('FF${color.replaceAll('#', '')}', radix: 16),
                    ),
                    icon: expense.category.icon,
                    title: expense.title,
                    category: expense.category.title,
                    amount: expense.amount,
                    date: expense.date,
                    onTap: () =>
                        bottomModal(context: context, expense: expense),
                  );
                },
              );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, _) =>
          Center(child: Text("Oops, connection error, please log in again")),
    );
  }
}
