import 'package:financial_ccounting/core/constants/currency_enum.dart';
import 'package:financial_ccounting/core/constants/language_enum.dart';
import 'package:financial_ccounting/core/l10n/app_localizations.dart';
import 'package:financial_ccounting/core/l10n/en/app_localizations_en.dart';
import 'package:financial_ccounting/core/l10n/es/app_localizations_es.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../../core/providers/user_provider.dart';

final languageProvider = StateProvider<LanguageEnum>((ref) {
  final user = ref.watch(userProvider).value;
  return LanguageEnum.values.firstWhere(
    (l) => l.name == user?.language,
    orElse: () => LanguageEnum.en,
  );
});

final localizationProvider = Provider<AppLocalizations>((ref) {
  final lang = ref.watch(languageProvider);
  return switch (lang) {
    LanguageEnum.es => AppLocalizationsEs(),
    _ => AppLocalizationsEn(),
  };
});

final currencyProvider = StateProvider<CurrencyEnum>((ref) {
  final user = ref.watch(userProvider).value;
  return CurrencyEnum.values.firstWhere(
    (c) => c.name == user?.currency,
    orElse: () => CurrencyEnum.usd,
  );
});
