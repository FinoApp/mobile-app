import 'package:financial_ccounting/core/constants/language_enum.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropdownButtonLanguage extends ConsumerWidget {
  const DropdownButtonLanguage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(languageProvider);

    return DropdownButtonFormField<LanguageEnum>(
      isExpanded: true,
      initialValue: currentLanguage,
      decoration: InputDecoration(
        prefixIcon: Icon(
          CupertinoIcons.globe,
          color: Theme.of(context).colorScheme.primary,
        ),
        fillColor: Colors.transparent,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(width: 1.5),
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
      ),
      dropdownColor: Theme.of(context).colorScheme.onPrimary,
      borderRadius: BorderRadius.circular(8),
      icon: Icon(CupertinoIcons.chevron_down, size: 18),
      items: LanguageEnum.values.map((language) {
        return DropdownMenuItem<LanguageEnum>(
          value: language,
          child: Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  language.title,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ),
            ],
          ),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          ref.read(languageProvider.notifier).state = value;
        }
      },
    );
  }
}
