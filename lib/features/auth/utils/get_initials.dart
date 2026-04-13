String getInitials(String text) {
  return text
      .split(' ')
      .map((word) => word.isNotEmpty ? word[0].toUpperCase() : '')
      .join();
}
