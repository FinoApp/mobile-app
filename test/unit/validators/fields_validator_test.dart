import 'package:financial_ccounting/core/l10n/en/app_localizations_en.dart';
import 'package:financial_ccounting/features/add_finance/utils/fields_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final l10n = AppLocalizationsEn();

  group('fieldsValidator', () {
    test('returns error when value is null', () {
      expect(fieldsValidator(null, l10n), l10n.fillInThisField);
    });

    test('returns error when value is empty string', () {
      expect(fieldsValidator('', l10n), l10n.fillInThisField);
    });

    test('returns null for a non-empty value', () {
      expect(fieldsValidator('some text', l10n), isNull);
    });

    test('returns null for a value with only spaces', () {
      expect(fieldsValidator('   ', l10n), isNull);
    });

    test('returns null for a numeric string', () {
      expect(fieldsValidator('123.45', l10n), isNull);
    });
  });
}
