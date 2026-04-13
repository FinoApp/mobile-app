import 'package:financial_ccounting/features/add_finance/presentation/providers/expense_data_provider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Amount extends ConsumerWidget {
  final FormFieldValidator<String?> validator;
  final TextEditingController controller;

  const Amount({super.key, required this.validator, required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final currency = ref.watch(currencyProvider);
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        onChanged: (value) {
          ref.read(amountProvider.notifier).state = value;
        },
        validator: validator,
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(r'^\d{0,10}([.,]\d{0,4})?$'),
          ),
        ],
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 14, top: 8),
            child: Text(
              currency.symbol,
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          fillColor: Theme.of(context).colorScheme.onPrimary,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          hint: Text(
            'Enter value',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isLight ? Colors.black38 : Colors.white38,
            ),
          ),
        ),
      ),
    );
  }
}
