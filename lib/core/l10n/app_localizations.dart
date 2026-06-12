import 'package:flutter/widgets.dart';
import 'en/app_localizations_en.dart';

abstract class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return AppLocalizationsEn();
  }

  // Auth - Login
  String get signIn;
  String get signUp;
  String get dontHaveAccount;
  String get alreadyHaveAccount;
  String get signInButton;
  String get signUpButton;

  // Auth - Fields
  String get email;
  String get password;
  String get firstName;
  String get lastName;
  String get confirmPassword;

  // Auth- Errors
  String get enterCorrectEmailOrPassword;
  String get userNotFound;
  String get emailAlreadyUsed;

  // Validators - Login
  String get enterEmailAddress;
  String get enterCorrectEmail;
  String get enterPassword;

  // Validators - Register
  String get enterFirstAndLastName;
  String get maximumLength50;
  String get enterYourEmail;
  String get enterCorrectEmailAddress;
  String get enterYourPassword;
  String get passwordTooShort;
  String get passwordsDontMatch;

  // Validators - Fields
  String get fillInThisField;

  // Navigation
  String get navSpending;
  String get navProgress;
  String get navHistory;
  String get navProfile;

  // Main Finance Page
  String get spendingChart;
  String get expensesByCategory;
  String get lastExpenses;
  String get seeAll;

  // Add Finance Page
  String get addPageTitle;
  String get titleLabel;
  String get amountLabel;
  String get categoryLabel;
  String get dateLabel;
  String get noteLabel;
  String get pleaseSelectCategory;
  String get expenseAdded;
  String get failedToAddExpense;

  // History Page
  String get historyPageTitle;
  String get noExpensesYet;
  String get noExpensesDescription;
  String get addExpenseButton;

  // Profile Page
  String get profilePageTitle;
  String get version;

  // Settings Menu
  String get darkMode;
  String get currency;
  String get language;
  String get notifications;
  String get safety;
  String get help;

  // Log Out Modal
  String get logOut;
  String get logOutConfirmation;
  String get cancel;

  // Support Page
  String get supportPageTitle;
  String get contactUs;
  String get supportDescription;
  String get tapToCopyEmail;
  String get faq;
  String get faqQuestion1;
  String get faqAnswer1;
  String get faqQuestion2;
  String get faqAnswer2;
  String get faqQuestion3;
  String get faqAnswer3;

  // Theme Page
  String get themePageTitle;
  String get themeLight;
  String get themeDark;
  String get themeSystem;

  // Language Page
  String get languagePageTitle;
  String get changeLanguage;
  String get languageEditedSuccessfully;

  // Currency Page
  String get currencyPageTitle;
  String get changeCurrency;
  String get currencyEditedSuccessfully;

  // Generic errors
  String get somethingWentWrong;

  // Expense Detail Modal
  String get delete;
  String get edit;

  // Edit Expense Modal
  String get editExpense;
  String get save;
  String get expenseUpdated;
  String get failedToUpdateExpense;

  // Edit Category Modal
  String get editCategory;
  String get icon;
  String get categoryUpdated;
  String get failedToUpdateCategory;
  String get enterTitleHint;
  String get enterEmojiHint;

  // All Categories Page
  String get categoriesPageTitle;
  String get color;

  // New Category Modal
  String get newCategory;
  String get createButton;
  String get failedToCreateCategory;

  // Progress Page
  String get progressPageTitle;
  String get comingSoon;
}
