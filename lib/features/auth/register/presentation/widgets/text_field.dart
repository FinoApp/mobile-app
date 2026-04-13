import 'package:flutter/material.dart';

class TextFieldwidget extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final IconData? icon;
  final String text;
  final bool isHide;
  final Widget? suffix;
  final EdgeInsetsGeometry? contentPadding;
  const TextFieldwidget({
    super.key,
    this.validator,
    this.controller,
    this.icon,
    required this.text,
    this.isHide = false,
    this.suffix,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isHide,
      style: Theme.of(
        context,
      ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        suffix: suffix,
        contentPadding: contentPadding,
        prefixIcon: Icon(
          icon,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        fillColor: Colors.transparent,
        filled: true,

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1.5,
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1.5,
            color: Theme.of(context).colorScheme.error,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1.5,
            color: Theme.of(context).colorScheme.secondary.withAlpha(160),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        hint: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondaryFixed,
          ),
        ),
      ),
    );
  }
}
