import 'package:flutter/material.dart';

class InfoCategoryContainer extends StatelessWidget {
  const InfoCategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.swipe_left_rounded,
            size: 16,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          SizedBox(width: 6),
          Text(
            'Swipe left to edit or delete',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
