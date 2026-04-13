import 'package:financial_ccounting/features/add_finance/presentation/providers/expense_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SingleDatePicker extends StatefulWidget {
  const SingleDatePicker({super.key});

  @override
  State<SingleDatePicker> createState() => _SingleDatePickerState();
}

class _SingleDatePickerState extends State<SingleDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: double.infinity,

        child: Consumer(
          builder: (context, ref, _) => ShadDatePicker(
            onChanged: (DateTime? selectDate) {
              ref.read(selectDateProvider.notifier).state = selectDate!;
            },
            buttonPadding: EdgeInsets.symmetric(horizontal: 8),
            leading: Icon(
              Icons.calendar_month_outlined,
              color: Theme.of(context).colorScheme.secondary,
              size: 26,
            ),
            placeholder: Text(
              'Select date',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: const Color.fromARGB(255, 196, 196, 196),
              ),
            ),
            buttonTextStyle: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
            calendarHeaderHeight: 30,
            height: 50,
            anchor: ShadAnchor(
              childAlignment: Alignment.center,
              overlayAlignment: Alignment.center,
              offset: Offset(0, -80),
            ),

            buttonDecoration: ShadDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
