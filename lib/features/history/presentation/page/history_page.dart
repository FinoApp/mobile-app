import 'package:financial_ccounting/core/theme/color.dart';
import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/history/presentation/widgets/extense_history_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({super.key});

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.removeListener(onScroll);
    scrollController.dispose();
  }

  void onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      ref.read(expenseListProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final extenseList = ref.watch(expenseListProvider);
    final currency = ref.watch(currencyProvider);

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text('History', style: Theme.of(context).textTheme.bodyLarge),
        toolbarHeight: 46,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),

          child: extenseList.when(
            data: (data) => data.isEmpty
                ? SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              isLight
                                  ? '/images/empty_list_light.png'
                                  : '/images/empty_list_dark.png',
                              width: 250,
                              height: 230,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'No Expenes Yet',
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                  ),
                            ),
                            SizedBox(height: 10),

                            Text(
                              'You have no recorded expenses. Add\n'
                              'a new expense to get started!',
                              textAlign: TextAlign.center,

                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: isLight
                                        ? Colors.black45
                                        : Colors.white54,
                                  ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                context.go('/add');
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 50,
                                  right: 50,
                                  bottom: 20,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    'Add Expense',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: AppColors.mainTextColorLight,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    controller: scrollController,

                    itemCount: data.length + 1,

                    itemBuilder: (context, index) {
                      if (index == data.length) {
                        final notifier = ref.read(expenseListProvider.notifier);
                        if (notifier.hasNext) {
                          return Padding(
                            padding: EdgeInsetsGeometry.symmetric(vertical: 8),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        } else {
                          return SizedBox.shrink();
                        }
                      }
                      final expense = data[index];
                      return ExtenseHistoryContainer(
                        currency: currency.symbol,
                        icon: expense.category.icon,
                        color: expense.category.color,
                        title: expense.title,
                        category: expense.category.title,
                        amount: expense.amount,
                        date: expense.date,
                      );
                    },
                  ),
            loading: () => Center(child: CircularProgressIndicator.adaptive()),
            error: (error, stack) {
              print('Error: $error');
              print('Stack: $stack');
              return Center(child: Text('Error: $error'));
            },
          ),
        ),
      ),
    );
  }
}
