# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build and Development Commands

```bash
# Get dependencies
flutter pub get

# Run the app
flutter run

# Run code generation (for freezed/json_serializable models)
dart run build_runner build --delete-conflicting-outputs

# Watch for changes and regenerate
dart run build_runner watch --delete-conflicting-outputs

# Analyze code
flutter analyze

# Run tests
flutter test

# Run a single test file
flutter test test/widget_test.dart
```

## Architecture Overview

This is a Flutter financial accounting application using a feature-based architecture with Riverpod for state management.

### Core Technologies
- **State Management**: Riverpod (`flutter_riverpod`)
- **Routing**: go_router with authentication guards
- **HTTP Client**: Dio with auth interceptor for token refresh
- **UI Components**: shadcn_ui
- **Models**: freezed + json_serializable for immutable data classes
- **Charts**: fl_chart
- **Secure Storage**: flutter_secure_storage for tokens

### Directory Structure

- `lib/core/` - Shared infrastructure
  - `providers/` - Riverpod providers (dio, theme, user, token storage)
  - `models/` - Shared data models (User, Category)
  - `services/` - Auth interceptor, token storage
  - `router/` - GoRouter configuration with auth redirect logic
  - `theme/` - App theming (light/dark)
  - `widgets/` - Reusable widgets including navigation bar

- `lib/features/` - Feature modules, each following presentation/data pattern
  - `auth/` - Login, register, auth utilities
  - `main_finance/` - Dashboard with expense chart and categories
  - `add_finance/` - Create/edit expenses
  - `history/` - Expense history view
  - `profile/` - User settings (theme, currency, language)
  - `progress/` - Progress tracking
  - `splash_screen/` - App splash animation

### Key Patterns

**Authentication Flow**: Routes are guarded in `lib/core/router/routers.dart`. The `isLoginProvider` controls redirect logic - unauthenticated users are sent to `/auth`, authenticated users on auth pages redirect to `/home`.

**Data Models**: Located in `*.dart` files with corresponding `*.freezed.dart` and `*.g.dart` generated files. After modifying model classes, run build_runner to regenerate.

**API Integration**: Dio provider at `lib/core/providers/dio_provider.dart` includes `AuthInterceptor` for automatic token management.

### Analysis Configuration

Generated files (`*.freezed.dart`, `*.g.dart`) are excluded from analysis in `analysis_options.yaml`.
