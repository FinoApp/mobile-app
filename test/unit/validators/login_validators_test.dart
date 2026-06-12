import 'package:financial_ccounting/core/l10n/en/app_localizations_en.dart';
import 'package:financial_ccounting/features/auth/utils/login_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final l10n = AppLocalizationsEn();

  group('loginEmailValidator', () {
    test('returns error when value is empty', () {
      expect(loginEmailValidator('', l10n), l10n.enterEmailAddress);
    });

    test('returns error when email is missing @ symbol', () {
      expect(loginEmailValidator('notanemail', l10n), l10n.enterCorrectEmail);
    });

    test('returns error when email has no domain', () {
      expect(loginEmailValidator('user@', l10n), l10n.enterCorrectEmail);
    });

    test('returns error when email has no local part', () {
      expect(loginEmailValidator('@domain.com', l10n), l10n.enterCorrectEmail);
    });

    test('returns null for valid email', () {
      expect(loginEmailValidator('user@example.com', l10n), isNull);
    });

    test('returns null for email with dots and plus', () {
      expect(loginEmailValidator('user.name@domain.co', l10n), isNull);
    });
  });

  group('loginPasswordValidator', () {
    test('returns error when value is empty', () {
      expect(loginPasswordValidator('', l10n), l10n.enterPassword);
    });

    test('returns null for any non-empty password', () {
      expect(loginPasswordValidator('a', l10n), isNull);
    });

    test('returns null for typical password', () {
      expect(loginPasswordValidator('password123', l10n), isNull);
    });
  });
}
