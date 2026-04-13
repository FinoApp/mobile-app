import 'package:flutter/material.dart';

class ButtonFill extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const ButtonFill({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(child: child),
      ),
    );
  }
}
