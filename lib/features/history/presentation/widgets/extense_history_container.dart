// import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExtenseHistoryContainer extends StatelessWidget {
  final String title;
  final String category;
  final double amount;
  final String date;
  final String icon;
  final String color;
  final String currency;
  const ExtenseHistoryContainer({
    super.key,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
    required this.icon,
    required this.color,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('dd MMM').format(DateTime.parse(date));
    final isLight = Theme.of(context).brightness == Brightness.light;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isLight ? Colors.white : Colors.black,
      ),
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(
              int.parse('FF${color.replaceAll('#', '')}', radix: 16),
            ),
            radius: 24,
            child: Text(icon),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
                Text(
                  category.toString(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '-$amount $currency',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 18,
                  color: isLight
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                formattedDate,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isLight ? Colors.black54 : Colors.white54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
