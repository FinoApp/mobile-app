import 'package:financial_ccounting/core/theme/color.dart';
import 'package:financial_ccounting/features/add_finance/presentation/providers/expense_data_provider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ButtonContainer extends ConsumerWidget {
  final VoidCallback onTap;
  const ButtonContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectDate = ref.watch(selectDateProvider);
    final dateFormat = DateFormat('dd MMM').format(selectDate);
    final amountValue = ref.watch(amountProvider);
    final currency = ref.watch(currencyProvider).symbol;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(12),
      ),

      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Result : ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Text(
                amountValue.isEmpty ? '0 $currency' : '$amountValue $currency',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(width: 8),
              Text('•'),
              SizedBox(width: 8),
              Text(
                dateFormat,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Theme.of(context).colorScheme.primary,
              ),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Add Expense',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.mainTextColorLight,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
