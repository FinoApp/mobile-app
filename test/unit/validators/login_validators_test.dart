import 'package:financial_ccounting/features/auth/utils/login_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('loginEmailValidator', () {
    test('returns error when value is empty', () {
      expect(loginEmailValidator(''), 'Enter email adress!');
    });

    test('returns error when email is missing @ symbol', () {
      expect(loginEmailValidator('notanemail'), 'Enter correct email');
    });

    test('returns error when email has no domain', () {
      expect(loginEmailValidator('user@'), 'Enter correct email');
    });

    test('returns error when email has no local part', () {
      expect(loginEmailValidator('@domain.com'), 'Enter correct email');
    });

    test('returns null for valid email', () {
      expect(loginEmailValidator('user@example.com'), isNull);
    });

    test('returns null for email with dots and plus', () {
      expect(loginEmailValidator('user.name@domain.co'), isNull);
    });
  });

  group('loginPasswordValidator', () {
    test('returns error when value is empty', () {
      expect(loginPasswordValidator(''), 'Enter password');
    });

    test('returns null for any non-empty password', () {
      expect(loginPasswordValidator('a'), isNull);
    });

    test('returns null for typical password', () {
      expect(loginPasswordValidator('password123'), isNull);
    });
  });
}
