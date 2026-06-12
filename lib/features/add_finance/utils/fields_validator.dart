import 'package:financial_ccounting/core/l10n/app_localizations.dart';

String? fieldsValidator(String? value, AppLocalizations l10n) {
  if (value == null || value.isEmpty) {
    return l10n.fillInThisField;
  }
  return null;
}
