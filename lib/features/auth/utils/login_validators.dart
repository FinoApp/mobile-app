// ignore_for_file: strict_top_level_inference

import 'package:financial_ccounting/core/l10n/app_localizations.dart';

String? loginEmailValidator(value, AppLocalizations l10n) {
  if (value.isEmpty || value == null) {
    return l10n.enterEmailAddress;
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value)) {
    return l10n.enterCorrectEmail;
  }
  return null;
}

String? loginPasswordValidator(value, AppLocalizations l10n) {
  if (value.isEmpty || value == null) {
    return l10n.enterPassword;
  } else {
    return null;
  }
}
