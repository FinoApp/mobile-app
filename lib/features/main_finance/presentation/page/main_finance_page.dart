import 'package:financial_ccounting/features/main_finance/presentation/widgets/main_page/category_container.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/main_page/chart.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/main_page/expense_column.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MainFinancePage extends ConsumerWidget {
  const MainFinancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = DateTime.now();
    final formatter = DateFormat('dd MMMM yyyy').format(now);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(formatter, style: Theme.of(context).textTheme.bodyMedium),
        toolbarHeight: 46,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SPENDING CHART'),
                SizedBox(height: 8),
                WeekBarChart(),
                SizedBox(height: 46),
                Text('EXPENSES BY CATEGORY'),
                SizedBox(height: 8),
                CategoryContainer(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LAST EXPENSES'),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Text('See all >'),
                      onTap: () {
                        context.go('/history');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ExpenseColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
