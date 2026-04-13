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
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 12, bottom: 12, right: 0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(
                    int.parse('FF${color.replaceFirst('#', '')}', radix: 16),
                  ),
                  child: Text(icon),
                ),
                SizedBox(width: 10),
                Text(category),
              ],
            ),
            Row(
              children: [
                Text('${summary.toString()} $currency'),
                SizedBox(width: 14),
                Icon(Icons.arrow_back_ios, color: Colors.black12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
