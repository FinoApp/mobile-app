import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  final TextEditingController titleController;
  final FormFieldValidator<String?> validator;
  const TitleField({
    super.key,
    required this.titleController,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        maxLength: 50,
        validator: validator,
        controller: titleController,
        keyboardType: TextInputType.text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          prefixIcon: Icon(
            CupertinoIcons.doc_text,
            size: 32,
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
            'Enter title',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isLight ? Colors.black38 : Colors.white38,
            ),
          ),
        ),
      ),
    );
  }
}
