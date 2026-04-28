import 'package:financial_ccounting/features/add_finance/utils/fields_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('fieldsValidator', () {
    test('returns error when value is null', () {
      expect(fieldsValidator(null), 'Fill in this field');
    });

    test('returns error when value is empty string', () {
      expect(fieldsValidator(''), 'Fill in this field');
    });

    test('returns null for a non-empty value', () {
      expect(fieldsValidator('some text'), isNull);
    });

    test('returns null for a value with only spaces', () {
      // Spaces count as non-empty
      expect(fieldsValidator('   '), isNull);
    });

    test('returns null for a numeric string', () {
      expect(fieldsValidator('123.45'), isNull);
    });
  });
}
