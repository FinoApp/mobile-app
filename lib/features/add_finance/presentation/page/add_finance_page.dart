import 'package:dio/dio.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/add_finance/presentation/providers/expense_data_provider.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/amount.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/button_container.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/category.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/date_picker.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/note.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/snackbar_success.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/title.dart';
import 'package:financial_ccounting/features/add_finance/utils/fields_validator.dart';
import 'package:financial_ccounting/features/main_finance/data/providers/category_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFinancePage extends ConsumerStatefulWidget {
  const AddFinancePage({super.key});

  @override
  ConsumerState<AddFinancePage> createState() => _AddFinancePageState();
}

class _AddFinancePageState extends ConsumerState<AddFinancePage> {
  final TextEditingController noteController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    amountController.dispose();
    titleController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectDate = ref.watch(selectDateProvider);
    final amountValue = ref.watch(amountProvider);
    final selectIndexCategory = ref.watch(selectedIndexCategoryProvider);

    return Form(
      key: globalKey,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            title: Text('Add', style: Theme.of(context).textTheme.bodyLarge),
            toolbarHeight: 46,
          ),
          body: SizedBox.expand(
            child: Stack(
              children: [
                SafeArea(
                  minimum: EdgeInsets.only(left: 16, right: 16, bottom: 116),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(
                      context,
                    ).copyWith(scrollbars: false),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title *',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 8),
                          TitleField(
                            titleController: titleController,
                            validator: (value) => fieldsValidator(value),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Amount *',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 8),
                          Amount(
                            controller: amountController,
                            validator: (value) => fieldsValidator(value),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Category *',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 8),
                          Category(radius: 40),
                          SizedBox(height: 10),

                          selectIndexCategory == null
                              ? Text(
                                  'Select category',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium!,
                                )
                              : SizedBox.shrink(),

                          SizedBox(height: 10),
                          Text(
                            'Date',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 8),
                          SingleDatePicker(),
                          SizedBox(height: 20),
                          Text(
                            'Note',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 8),
                          Note(noteController: noteController),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: ButtonContainer(
                    onTap: () async {
                      if (globalKey.currentState!.validate()) {
                        try {
                          await ref
                              .read(expenseRepositoryProvider)
                              .postExpense(
                                CreateExpenseModel(
                                  amount: double.parse(amountValue),
                                  title: titleController.text,
                                  categoryId: selectIndexCategory!,
                                  date: selectDate.toUtc().toIso8601String(),
                                  note: noteController.text,
                                ),
                              );

                          ref.read(amountProvider.notifier).state = '';
                          ref.read(selectDateProvider.notifier).state =
                              DateTime.now();
                          ref
                                  .read(selectedIndexCategoryProvider.notifier)
                                  .state =
                              null;
                          noteController.clear();
                          titleController.clear();
                          amountController.clear();
                          ref.invalidate(expenseListProvider);
                          ref.invalidate(categoryListProvider);
                          showSuccessSnackbar(
                            context,
                            'Expense added successfully',
                          );
                        } on DioException catch (e) {
                          final message =
                              e.response?.data?['message'] ??
                              'Failed to add expense';
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message.toString()),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
