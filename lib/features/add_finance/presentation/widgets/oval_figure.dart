import 'package:flutter/material.dart';

class OvalFigure extends StatelessWidget {
  final String icons;
  final String title;
  final String color;
  final bool isSelected;
  final double radius;
  final VoidCallback onTap;

  const OvalFigure({
    super.key,
    required this.icons,
    required this.title,
    required this.onTap,
    this.isSelected = false,
    this.color = '#FF6B6B',
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Color(
                int.parse('FF${color.replaceFirst('#', '')}', radix: 16),
              ),
              radius: radius,
              child: Text(icons, style: TextStyle(fontSize: 26)),
            ),
          ),
        ),
        SizedBox(height: 6),
        SizedBox(
          width: 80,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
          ),
        ),
      ],
    );
  }
}
