import 'package:financial_ccounting/features/auth/utils/register_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('registerNameValidator', () {
    test('returns error when value is empty', () {
      expect(registerNameValidator(''), 'Enter your first and last name');
    });

    test('returns error when name exceeds 50 characters', () {
      final longName = 'a' * 51;
      expect(registerNameValidator(longName), 'Maximum length - 50 symbols ');
    });

    test('returns null for name at exactly 50 characters', () {
      final exactName = 'a' * 50;
      expect(registerNameValidator(exactName), isNull);
    });

    test('returns null for valid short name', () {
      expect(registerNameValidator('John'), isNull);
    });
  });

  group('registerEmailValidator', () {
    test('returns error when value is empty', () {
      expect(registerEmailValidator(''), 'Enter your email');
    });

    test('returns error for email without domain', () {
      expect(registerEmailValidator('user@'), ' Enter correct email adress');
    });

    test('returns error for email without @ symbol', () {
      expect(registerEmailValidator('invalidemail'), ' Enter correct email adress');
    });

    test('returns null for valid email', () {
      expect(registerEmailValidator('user@example.com'), isNull);
    });
  });

  group('registerPasswordValidator', () {
    test('returns error when value is empty', () {
      expect(registerPasswordValidator(''), 'Enter your password');
    });

    test('returns error when password has fewer than 6 characters', () {
      expect(registerPasswordValidator('abc'), 'The password contains less than 6 characters');
      expect(registerPasswordValidator('12345'), 'The password contains less than 6 characters');
    });

    test('returns null for password with exactly 6 characters', () {
      expect(registerPasswordValidator('abcdef'), isNull);
    });

    test('returns null for long password', () {
      expect(registerPasswordValidator('securePassword123!'), isNull);
    });
  });

  group('registerConfirmPasswordValidator', () {
    test('returns error when passwords do not match', () {
      expect(
        registerConfirmPasswordValidator('password1', 'password2'),
        'Password dont mutch',
      );
    });

    test('returns null when passwords match exactly', () {
      expect(
        registerConfirmPasswordValidator('myPassword', 'myPassword'),
        isNull,
      );
    });

    test('returns error when confirmation is empty but original is not', () {
      expect(
        registerConfirmPasswordValidator('', 'password'),
        'Password dont mutch',
      );
    });
  });
}
