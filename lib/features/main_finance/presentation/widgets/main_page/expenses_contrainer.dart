import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpensesContrainer extends StatelessWidget {
  final String title;
  final String category;
  final double amount;
  final String date;
  final Color color;
  final String icon;
  final String currency;
  final VoidCallback onTap;
  const ExpensesContrainer({
    super.key,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
    required this.onTap,
    required this.color,
    required this.icon,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('dd MMM').format(DateTime.parse(date));
    final isLight = Theme.of(context).brightness == Brightness.light;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isLight ? Colors.white : Colors.black,
        ),
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.all(14),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: color, radius: 30, child: Text(icon)),
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
                      fontWeight: FontWeight(400),
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
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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
      ),
    );
  }
}
