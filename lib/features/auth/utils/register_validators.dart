// ignore_for_file: strict_top_level_inference

String? registerNameValidator(value) {
  if (value.isEmpty || value == null) {
    return 'Enter your first and last name';
  } else if (value.length > 50) {
    return 'Maximum length - 50 symbols ';
  } else {
    return null;
  }
}

String? registerEmailValidator(value) {
  if (value.isEmpty || value == null) {
    return 'Enter your email';
  }
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value)) {
    return ' Enter correct email adress';
  }
  return null;
}

String? registerPasswordValidator(value) {
  if (value.isEmpty || value == null) {
    return 'Enter your password';
  } else if (value.length < 6) {
    return 'The password contains less than 6 characters';
  } else {
    return null;
  }
}

String? registerConfirmPasswordValidator(value, String password) {
  if (value != password) {
    return 'Password dont mutch';
  } else {
    return null;
  }
}
