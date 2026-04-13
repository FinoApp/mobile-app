String? loginEmailValidator(value) {
  if (value.isEmpty || value == null) {
    return 'Enter email adress!';
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value)) {
    return 'Enter correct email';
  }
  return null;
}

String? loginPasswordValidator(value) {
  if (value.isEmpty || value == null) {
    return 'Enter password';
  } else {
    return null;
  }
}
