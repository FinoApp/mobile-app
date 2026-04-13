import 'package:financial_ccounting/features/profile/presentation/widgets/log_out_modal.dart';
import 'package:flutter/material.dart';

class LogOutButton extends StatefulWidget {
  const LogOutButton({super.key});

  @override
  State<LogOutButton> createState() => _LogOutButtonState();
}

class _LogOutButtonState extends State<LogOutButton> {
  bool _onTapColor = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _onTapColor = true),
      onTapUp: (_) => setState(() => _onTapColor = false),
      onTapCancel: () => setState(() => _onTapColor = false),
      onTap: () =>
          showDialog(context: context, builder: (context) => LogOutModal()),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: _onTapColor
              ? Theme.of(context).colorScheme.primary.withAlpha(120)
              : Theme.of(context).colorScheme.primary.withAlpha(70),
        ),
        child: Center(
          child: Text(
            'Log out',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
