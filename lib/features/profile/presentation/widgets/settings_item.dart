import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.isActive = true,
  });
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque, // reaction on empty place
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: isActive
                      ? null
                      : Theme.of(context).colorScheme.onSecondary,
                ),
                SizedBox(width: 8),
                Text(
                  text,
                  style: isActive
                      ? Theme.of(context).textTheme.bodyMedium
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                ),
              ],
            ),
            InkWell(
              child: Icon(
                Icons.arrow_forward_ios,
                color: isActive
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
