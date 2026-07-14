import 'dart:ui';
import 'package:financial_ccounting/core/errors/failure.dart';
import 'package:financial_ccounting/core/widgets/divider.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:financial_ccounting/features/add_finance/presentation/providers/expense_usecases_provider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/main_page/edit_expense_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../add_finance/presentation/providers/expense_data_provider.dart';

void bottomModal({
  required BuildContext context,
  required GetExpenseModel expense,
}) {
  final l10n = ProviderScope.containerOf(context).read(localizationProvider);
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      final isLight = Theme.of(context).brightness == Brightness.light;

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              decoration: BoxDecoration(
                color: isLight
                    ? Colors.white.withValues(alpha: 0.95)
                    : Colors.black12.withValues(alpha: 0.20),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isLight
                      ? Colors.white.withValues(alpha: 0.80)
                      : Colors.black12.withValues(alpha: 0.50),
                  width: 1.5,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 28, 24, 20),
                    child: Column(
                      children: [
                        Text(
                          '${expense.amount.toString()} \$',
                          textAlign: TextAlign.center,
                          style: Theme.of(
                            context,
                          ).textTheme.displayLarge!.copyWith(fontSize: 30),
                        ),
                        SizedBox(width: 12),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              expense.category.icon,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(width: 10),
                            Text(
                              expense.title,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Text(
                          DateFormat(
                            'MMM dd',
                          ).format(DateTime.parse(expense.date)),
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: isLight
                                    ? Colors.black54
                                    : Colors.white60,
                              ),
                        ),
                      ],
                    ),
                  ),

                  Divider(height: 1, thickness: 1, color: Colors.black12),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              child: Text(
                                l10n.categoryLabel,
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondary,
                                    ),
                              ),
                            ),
                            Text(
                              expense.category.title,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        CastomDivider(left: 0, right: 0),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              child: Text(
                                l10n.dateLabel,
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondary,
                                    ),
                              ),
                            ),
                            Text(
                              DateFormat(
                                'dd MMM',
                              ).format(DateTime.parse(expense.date)),
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        CastomDivider(left: 0, right: 0),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              child: Text(
                                l10n.noteLabel,
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondary,
                                    ),
                              ),
                            ),
                            SizedBox(width: 24),
                            Expanded(
                              child: Text(
                                expense.note == '' ? '—' : expense.note!,
                                softWrap: true,
                                textAlign: TextAlign.end,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        BottoModalButton(id: expense.id, expense: expense),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class BottoModalButton extends ConsumerWidget {
  final int id;
  final GetExpenseModel expense;
  const BottoModalButton({super.key, required this.id, required this.expense});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final l10n = ref.watch(localizationProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isLight
                      ? Colors.black.withValues(alpha: 0.05)
                      : Colors.white.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.delete,
                      size: 18,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    SizedBox(width: 6),
                    Text(
                      l10n.delete,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () async {
                try {
                  await ref.read(deleteExpenseUseCaseProvider).call(id);
                  ref.invalidate(expenseListProvider);
                  if (context.mounted) context.pop();
                } on Failure catch (_) {}
              },
            ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  showDialog(
                    context: context,
                    builder: (context) => EditExpenseModal(expense: expense),
                  ).then((_) {
                    ref.read(amountProvider.notifier).state = '';
                    ref.read(selectDateProvider.notifier).state =
                        DateTime.now();
                  }),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isLight
                      ? Colors.black.withValues(alpha: 0.05)
                      : Colors.white.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.pencil,
                      size: 18,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 6),
                    Text(
                      l10n.edit,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
