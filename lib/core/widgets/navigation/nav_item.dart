import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool selected;
  final VoidCallback onTap;
  const NavItem({
    super.key,
    required this.icon,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 30,
            icon,
            color: selected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onSecondary,
          ),
          SizedBox(height: 4),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: selected ? 6 : 0,
            height: selected ? 6 : 0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
