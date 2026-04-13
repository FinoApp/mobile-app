import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Note extends ConsumerWidget {
  final TextEditingController noteController;

  const Note({super.key, required this.noteController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return SizedBox(
      width: double.infinity,
      child: TextField(
        controller: noteController,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
        maxLength: 100,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),

          prefixIcon: Icon(
            Icons.message,
            color: Theme.of(context).colorScheme.secondary,
          ),
          fillColor: Theme.of(context).colorScheme.onPrimary,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          hint: Text(
            'Enter a note...',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isLight ? Colors.black38 : Colors.white38,
            ),
          ),
        ),
      ),
    );
  }
}
