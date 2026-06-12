import '../app_localizations.dart';

class AppLocalizationsEn extends AppLocalizations {
  // Auth - Login
  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Sign Up';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get signInButton => 'SIGN IN';

  @override
  String get signUpButton => 'SIGN UP';

  // Auth - Fields
  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get confirmPassword => 'Confirm Password';

  // Auth - Errors
  @override
  String get enterCorrectEmailOrPassword => 'Enter correct email or password';

  @override
  String get userNotFound => 'User not found';

  @override
  String get emailAlreadyUsed => 'Email already used';

  // Validators - Login
  @override
  String get enterEmailAddress => 'Enter email address!';

  @override
  String get enterCorrectEmail => 'Enter correct email';

  @override
  String get enterPassword => 'Enter password';

  // Validators - Register
  @override
  String get enterFirstAndLastName => 'Enter your first and last name';

  @override
  String get maximumLength50 => 'Maximum length — 50 characters';

  @override
  String get enterYourEmail => 'Enter your email';

  @override
  String get enterCorrectEmailAddress => 'Enter correct email address';

  @override
  String get enterYourPassword => 'Enter your password';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters';

  @override
  String get passwordsDontMatch => 'Passwords don\'t match';

  // Validators - Fields
  @override
  String get fillInThisField => 'Fill in this field';

  // Navigation
  @override
  String get navSpending => 'Spending';

  @override
  String get navProgress => 'Progress';

  @override
  String get navHistory => 'History';

  @override
  String get navProfile => 'Profile';

  // Main Finance Page
  @override
  String get spendingChart => 'SPENDING CHART';

  @override
  String get expensesByCategory => 'EXPENSES BY CATEGORY';

  @override
  String get lastExpenses => 'LAST EXPENSES';

  @override
  String get seeAll => 'See all >';

  // Add Finance Page
  @override
  String get addPageTitle => 'Add';

  @override
  String get titleLabel => 'Title';

  @override
  String get amountLabel => 'Amount';

  @override
  String get categoryLabel => 'Category';

  @override
  String get dateLabel => 'Date';

  @override
  String get noteLabel => 'Note';

  @override
  String get pleaseSelectCategory => 'Please select a category';

  @override
  String get expenseAdded => 'Expense added';

  @override
  String get failedToAddExpense => 'Failed to add expense';

  // History Page
  @override
  String get historyPageTitle => 'History';

  @override
  String get noExpensesYet => 'No Expenses Yet';

  @override
  String get noExpensesDescription =>
      'You have no recorded expenses. Add\na new expense to get started!';

  @override
  String get addExpenseButton => 'Add Expense';

  // Profile Page
  @override
  String get profilePageTitle => 'Profile';

  @override
  String get version => 'Version 1.0.0';

  // Settings Menu
  @override
  String get darkMode => 'Dark Mode';

  @override
  String get currency => 'Currency';

  @override
  String get language => 'Language';

  @override
  String get notifications => 'Notifications';

  @override
  String get safety => 'Safety';

  @override
  String get help => 'Help';

  // Log Out Modal
  @override
  String get logOut => 'Log Out';

  @override
  String get logOutConfirmation =>
      'Are you sure you want to log out of your account?';

  @override
  String get cancel => 'Cancel';

  // Support Page
  @override
  String get supportPageTitle => 'Support';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get supportDescription =>
      'Have questions, suggestions, or found a bug? We would love to hear from you!';

  @override
  String get tapToCopyEmail => 'Tap to copy email';

  @override
  String get faq => 'FAQ';

  @override
  String get faqQuestion1 => 'How do I add a new expense?';

  @override
  String get faqAnswer1 =>
      'Tap the "+" button in the bottom navigation bar and fill in the expense details.';

  @override
  String get faqQuestion2 => 'Can I edit or delete an expense?';

  @override
  String get faqAnswer2 =>
      'Yes, go to History or Home page, find the expense and swipe left to delete or tap to edit.';

  @override
  String get faqQuestion3 => 'How do I change the currency?';

  @override
  String get faqAnswer3 =>
      'Go to Profile → Currency and select your preferred currency.';

  // Theme Page
  @override
  String get themePageTitle => 'Theme';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeSystem => 'System';

  // Language Page
  @override
  String get languagePageTitle => 'Language';

  @override
  String get changeLanguage => 'Change language';

  @override
  String get languageEditedSuccessfully => 'Language updated successfully';

  // Currency Page
  @override
  String get currencyPageTitle => 'Currency';

  @override
  String get changeCurrency => 'Change Currency';

  @override
  String get currencyEditedSuccessfully => 'Currency updated successfully';

  // Generic errors
  @override
  String get somethingWentWrong => 'Something went wrong...';

  // Expense Detail Modal
  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  // Edit Expense Modal
  @override
  String get editExpense => 'Edit Expense';

  @override
  String get save => 'Save';

  @override
  String get expenseUpdated => 'Expense updated';

  @override
  String get failedToUpdateExpense => 'Failed to update expense';

  // Edit Category Modal
  @override
  String get editCategory => 'Edit Category';

  @override
  String get icon => 'Icon';

  @override
  String get categoryUpdated => 'Category updated';

  @override
  String get failedToUpdateCategory => 'Failed to update category';

  @override
  String get enterTitleHint => 'Enter title';

  @override
  String get enterEmojiHint => 'Enter emoji';

  // All Categories Page
  @override
  String get categoriesPageTitle => 'Categories';

  @override
  String get color => 'Color';

  // New Category Modal
  @override
  String get newCategory => 'New Category';

  @override
  String get createButton => 'Create';

  @override
  String get failedToCreateCategory => 'Failed to create category';

  // Progress Page
  @override
  String get progressPageTitle => 'Your Progress';

  @override
  String get comingSoon => 'Will be soon...';
}
