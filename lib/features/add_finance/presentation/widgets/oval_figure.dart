import 'package:flutter/material.dart';

class OvalFigure extends StatefulWidget {
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
  State<OvalFigure> createState() => _OvalFigureState();
}

class _OvalFigureState extends State<OvalFigure> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Color(
                int.parse('FF${widget.color.replaceFirst('#', '')}', radix: 16),
              ),
              radius: widget.radius,
              child: Text(widget.icons, style: TextStyle(fontSize: 26)),
            ),
          ),
        ),
        SizedBox(height: 6),
        SizedBox(
          width: 80,
          child: Text(
            widget.title,
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
