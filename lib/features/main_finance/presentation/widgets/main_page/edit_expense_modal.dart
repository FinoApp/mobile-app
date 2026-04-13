import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/amount.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/category.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/note.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../add_finance/presentation/providers/expense_data_provider.dart';
import '../../../../add_finance/presentation/widgets/snackbar_success.dart';
import '../../../../add_finance/utils/fields_validator.dart';

class EditExpenseModal extends ConsumerStatefulWidget {
  final GetExpenseModel expense;
  const EditExpenseModal({super.key, required this.expense});

  @override
  ConsumerState<EditExpenseModal> createState() => _EditExpenseModalState();
}

class _EditExpenseModalState extends ConsumerState<EditExpenseModal> {
  late final TextEditingController noteController;
  late final TextEditingController titleController;
  late final TextEditingController amountController;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    noteController = TextEditingController(text: widget.expense.note ?? '');
    titleController = TextEditingController(text: widget.expense.title);
    amountController = TextEditingController(
      text: widget.expense.amount.toString(),
    );

    Future.microtask(() {
      ref.read(selectedIndexCategoryProvider.notifier).state =
          widget.expense.category.id;
    });
  }

  @override
  void dispose() {
    noteController.dispose();
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectIndexCategory = ref.watch(selectedIndexCategoryProvider);

    final isLight = Theme.of(context).brightness == Brightness.light;
    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TitleField(
                  titleController: titleController,
                  validator: (value) => fieldsValidator(value),
                ),
                SizedBox(height: 8),
                Amount(
                  validator: (value) => fieldsValidator(value),
                  controller: amountController,
                ),
                SizedBox(height: 8),
                Category(radius: 28),
                SizedBox(height: 18),
                Text(
                  DateFormat(
                    'dd MMM yyyy',
                  ).format(DateTime.parse(widget.expense.date)),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                SizedBox(height: 18),
                Note(noteController: noteController),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(20),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.black12),
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: isLight
                                        ? Colors.black54
                                        : Colors.white54,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () async {
                          if (globalKey.currentState!.validate()) {
                            try {
                              await ref
                                  .read(expenseRepositoryProvider)
                                  .editExpense(
                                    widget.expense.id,
                                    UpdateExpenseModel(
                                      amount: double.parse(
                                        amountController.text,
                                      ),
                                      title: titleController.text,
                                      categoryId: selectIndexCategory,
                                      note: noteController.text,
                                    ),
                                  );
                              showSuccessSnackbar(
                                context,
                                'Expense updated successfully',
                              );

                              ref.invalidate(expenseListProvider);

                              if (context.mounted) {
                                context.pop();
                                context.pop();
                              }
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Failed to update expense'),
                                ),
                              );
                            }
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(40),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withAlpha(150),

                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: Text(
                              'Edit',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: isLight
                                        ? Theme.of(
                                            context,
                                          ).colorScheme.onPrimary
                                        : Theme.of(
                                            context,
                                          ).colorScheme.onSurface,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
