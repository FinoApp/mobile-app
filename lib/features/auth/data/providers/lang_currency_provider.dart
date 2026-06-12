import 'package:financial_ccounting/core/constants/currency_enum.dart';
import 'package:financial_ccounting/core/constants/language_enum.dart';
import 'package:financial_ccounting/core/l10n/app_localizations.dart';
import 'package:financial_ccounting/core/l10n/de/app_localizations_de.dart';
import 'package:financial_ccounting/core/l10n/en/app_localizations_en.dart';
import 'package:financial_ccounting/core/l10n/es/app_localizations_es.dart';
import 'package:financial_ccounting/core/l10n/fil/app_localizations_fil.dart';
import 'package:financial_ccounting/core/l10n/fr/app_localizations_fr.dart';
import 'package:financial_ccounting/core/l10n/id/app_localizations_id.dart';
import 'package:financial_ccounting/core/l10n/it/app_localizations_it.dart';
import 'package:financial_ccounting/core/l10n/ja/app_localizations_ja.dart';
import 'package:financial_ccounting/core/l10n/pt/app_localizations_pt.dart';
import 'package:financial_ccounting/core/l10n/th/app_localizations_th.dart';
import 'package:financial_ccounting/core/l10n/tr/app_localizations_tr.dart';
import 'package:financial_ccounting/core/l10n/vi/app_localizations_vi.dart';
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
    LanguageEnum.de => AppLocalizationsDe(),
    LanguageEnum.es => AppLocalizationsEs(),
    LanguageEnum.fil => AppLocalizationsFil(),
    LanguageEnum.fr => AppLocalizationsFr(),
    LanguageEnum.id => AppLocalizationsId(),
    LanguageEnum.it => AppLocalizationsIt(),
    LanguageEnum.ja => AppLocalizationsJa(),
    LanguageEnum.pt => AppLocalizationsPt(),
    LanguageEnum.th => AppLocalizationsTh(),
    LanguageEnum.tr => AppLocalizationsTr(),
    LanguageEnum.vi => AppLocalizationsVi(),
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
