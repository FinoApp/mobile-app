import 'package:financial_ccounting/core/l10n/en/app_localizations_en.dart';
import 'package:financial_ccounting/features/auth/utils/register_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final l10n = AppLocalizationsEn();

  group('registerNameValidator', () {
    test('returns error when value is empty', () {
      expect(registerNameValidator('', l10n), l10n.enterFirstAndLastName);
    });

    test('returns error when name exceeds 50 characters', () {
      final longName = 'a' * 51;
      expect(registerNameValidator(longName, l10n), l10n.maximumLength50);
    });

    test('returns null for name at exactly 50 characters', () {
      final exactName = 'a' * 50;
      expect(registerNameValidator(exactName, l10n), isNull);
    });

    test('returns null for valid short name', () {
      expect(registerNameValidator('John', l10n), isNull);
    });
  });

  group('registerEmailValidator', () {
    test('returns error when value is empty', () {
      expect(registerEmailValidator('', l10n), l10n.enterYourEmail);
    });

    test('returns error for email without domain', () {
      expect(registerEmailValidator('user@', l10n), l10n.enterCorrectEmailAddress);
    });

    test('returns error for email without @ symbol', () {
      expect(registerEmailValidator('invalidemail', l10n), l10n.enterCorrectEmailAddress);
    });

    test('returns null for valid email', () {
      expect(registerEmailValidator('user@example.com', l10n), isNull);
    });
  });

  group('registerPasswordValidator', () {
    test('returns error when value is empty', () {
      expect(registerPasswordValidator('', l10n), l10n.enterYourPassword);
    });

    test('returns error when password has fewer than 6 characters', () {
      expect(registerPasswordValidator('abc', l10n), l10n.passwordTooShort);
      expect(registerPasswordValidator('12345', l10n), l10n.passwordTooShort);
    });

    test('returns null for password with exactly 6 characters', () {
      expect(registerPasswordValidator('abcdef', l10n), isNull);
    });

    test('returns null for long password', () {
      expect(registerPasswordValidator('securePassword123!', l10n), isNull);
    });
  });

  group('registerConfirmPasswordValidator', () {
    test('returns error when passwords do not match', () {
      expect(
        registerConfirmPasswordValidator('password1', 'password2', l10n),
        l10n.passwordsDontMatch,
      );
    });

    test('returns null when passwords match exactly', () {
      expect(
        registerConfirmPasswordValidator('myPassword', 'myPassword', l10n),
        isNull,
      );
    });

    test('returns error when confirmation is empty but original is not', () {
      expect(
        registerConfirmPasswordValidator('', 'password', l10n),
        l10n.passwordsDontMatch,
      );
    });
  });
}
