# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Dependencies
flutter pub get

# Run
flutter run

# Code generation (required after modifying freezed/json_serializable models)
dart run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs

# Lint
flutter analyze

# Tests
flutter test                                              # all unit & widget tests
flutter test test/unit/                                   # unit tests only
flutter test test/widget/                                 # widget tests only
flutter test test/unit/validators/login_validators_test.dart  # single file
flutter test integration_test/                            # integration tests (requires device)
```

## Architecture

Feature-based Flutter app. Each feature in `lib/features/` follows a `data/` (repository, models, providers) and `presentation/` (pages, widgets) split.

**State management**: Riverpod. Some providers use `flutter_riverpod/legacy.dart` (`StateProvider`, `StateNotifier`) — do not migrate to the new API.

**Auth flow**: `isLoginProvider` (bool) drives GoRouter redirect logic in `lib/core/router/routers.dart`. Splash → `/auth` or `/home`. Unauthenticated users on protected routes redirect to `/auth`; authenticated users on auth routes redirect to `/home`.

**HTTP**: `dioProvider` creates a Dio instance with `AuthInterceptor` that automatically attaches Bearer tokens and retries on 401 with a refreshed token. Base URL: `http://3.80.90.99/api/v1`.

**Tokens**: stored in `flutter_secure_storage` under keys `accessToken`, `refreshToken`, `userId` via `TokenStorage` service.

**Models**: freezed + json_serializable. Always run build_runner after changing model files.

## Testing

- `test/unit/` — validators, model serialization, StateNotifier logic
- `test/widget/` — page rendering and form validation (uses `ProviderScope` overrides + GoRouter)
- `integration_test/` — full app flow on device

Mocking: use `mocktail`. Create mocks with `class MockFoo extends Mock implements Foo {}`.

For widget tests, override providers via `ProviderScope(overrides: [...])` and wrap pages in `MaterialApp.router` with a minimal GoRouter (not `ShadApp`).

## Known Quirks

- `lib/core/providers/user_id_provdier.dart` — intentional typo in filename, do not rename
- `EditCateogoryModel` — intentional typo in class name, do not rename
- Firebase is commented out in `main.dart` — do not uncomment without setting up `firebase_options.dart`
- `*.freezed.dart` and `*.g.dart` are excluded from analysis in `analysis_options.yaml`

## Code Style

- Never add comments or docstrings to code
