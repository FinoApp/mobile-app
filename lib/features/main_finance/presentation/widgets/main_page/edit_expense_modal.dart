import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/amount.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/category.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/note.dart';
import 'package:financial_ccounting/features/add_finance/presentation/widgets/title.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
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
    final l10n = ref.watch(localizationProvider);

    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withAlpha(25),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.edit_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 22,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    l10n.editExpense,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Title field
              Text(
                l10n.titleLabel,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(height: 6),
              TitleField(
                titleController: titleController,
                validator: (value) => fieldsValidator(value, l10n),
              ),
              SizedBox(height: 12),

              // Amount field
              Text(
                l10n.amountLabel,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(height: 6),
              Amount(
                validator: (value) => fieldsValidator(value, l10n),
                controller: amountController,
              ),
              SizedBox(height: 12),

              // Category
              Text(
                l10n.categoryLabel,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(height: 8),
              Category(radius: 28),
              SizedBox(height: 16),

              // Date
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 16,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  SizedBox(width: 8),
                  Text(
                    DateFormat('dd MMM yyyy').format(
                      DateTime.parse(widget.expense.date),
                    ),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Note field
              Text(
                l10n.noteLabel,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(height: 6),
              Note(noteController: noteController),
              SizedBox(height: 20),

              // Buttons
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => context.pop(),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isLight ? Colors.black12 : Colors.white24,
                          ),
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        child: Center(
                          child: Text(
                            l10n.cancel,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: isLight ? Colors.black54 : Colors.white54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        if (globalKey.currentState!.validate()) {
                          try {
                            await ref
                                .read(expenseRepositoryProvider)
                                .editExpense(
                                  widget.expense.id,
                                  UpdateExpenseModel(
                                    amount: double.parse(amountController.text),
                                    title: titleController.text,
                                    categoryId: selectIndexCategory,
                                    note: noteController.text,
                                  ),
                                );
                            ref.invalidate(expenseListProvider);
                            if (context.mounted) {
                              showSuccessSnackbar(context, l10n.expenseUpdated);
                              context.pop();
                              context.pop();
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(l10n.failedToUpdateExpense)),
                              );
                            }
                          }
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Center(
                          child: Text(
                            l10n.save,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
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
    );
  }
}
