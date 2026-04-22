import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.summary,
    required this.category,
    required this.color,
    required this.currency,
  });

  final String icon;
  final double summary;
  final String category;
  final String color;
  final String currency;

  @override
  Widget build(BuildContext context) {
    final categoryColor = Color(
      int.parse('FF${color.replaceFirst('#', '')}', radix: 16),
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text(icon, style: TextStyle(fontSize: 20))),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 2),
                Text(
                  '${summary.toStringAsFixed(2)} $currency',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_left_rounded,
            color: Theme.of(context).colorScheme.onSecondary,
            size: 24,
          ),
        ],
      ),
    );
  }
}
