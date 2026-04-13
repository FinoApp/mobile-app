String? fieldsValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Fill in this field';
  }
  return null;
}
