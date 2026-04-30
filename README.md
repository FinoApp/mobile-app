# Fino — Expense Tracker

A personal expense tracking app built with Flutter. Log your spending, organize it by category, and get a visual overview of your finances.

---


## Tech Stack

| Layer | Library |
|---|---|
| Framework | Flutter 3.11+ |
| State management | Riverpod 3 |
| Navigation | GoRouter 17 |
| HTTP | Dio 5 + custom `AuthInterceptor` |
| Models | Freezed + json_serializable |
| UI components | shadcn_ui, fl_chart, flutter_slidable |
| Secure storage | flutter_secure_storage |

---


## Getting Started

**Prerequisites:** Flutter SDK 3.11+, Dart 3+

```bash

flutter pub get

dart run build_runner build --delete-conflicting-outputs

flutter run
```

---

## Running Tests

```bash
flutter test

```

---

## Environment

Base API URL: `lib/core/constants/api_constants.dart`
