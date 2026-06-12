// ignore_for_file: strict_top_level_inference

import 'package:financial_ccounting/core/l10n/app_localizations.dart';

String? registerNameValidator(value, AppLocalizations l10n) {
  if (value.isEmpty || value == null) {
    return l10n.enterFirstAndLastName;
  } else if (value.length > 50) {
    return l10n.maximumLength50;
  } else {
    return null;
  }
}

String? registerEmailValidator(value, AppLocalizations l10n) {
  if (value.isEmpty || value == null) {
    return l10n.enterYourEmail;
  }
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value)) {
    return l10n.enterCorrectEmailAddress;
  }
  return null;
}

String? registerPasswordValidator(value, AppLocalizations l10n) {
  if (value.isEmpty || value == null) {
    return l10n.enterYourPassword;
  } else if (value.length < 6) {
    return l10n.passwordTooShort;
  } else {
    return null;
  }
}

String? registerConfirmPasswordValidator(value, String password, AppLocalizations l10n) {
  if (value != password) {
    return l10n.passwordsDontMatch;
  } else {
    return null;
  }
}
