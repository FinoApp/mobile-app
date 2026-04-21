import 'package:financial_ccounting/core/page/not_found_page.dart';
import 'package:financial_ccounting/core/providers/is_login_provider.dart';
import 'package:financial_ccounting/core/widgets/navigation/nav_bar.dart';
import 'package:financial_ccounting/features/add_finance/presentation/page/add_finance_page.dart';
import 'package:financial_ccounting/features/auth/auth_page.dart';
import 'package:financial_ccounting/features/auth/login/presentation/page/login_page.dart';
import 'package:financial_ccounting/features/auth/register/presentation/page/register_page.dart';
import 'package:financial_ccounting/features/history/presentation/page/history_page.dart';
import 'package:financial_ccounting/features/main_finance/presentation/page/all_categories_page.dart';
import 'package:financial_ccounting/features/main_finance/presentation/page/main_finance_page.dart';
import 'package:financial_ccounting/features/profile/presentation/page/currency_page.dart';
import 'package:financial_ccounting/features/profile/presentation/page/language_page.dart';
import 'package:financial_ccounting/features/profile/presentation/page/profile_page.dart';
import 'package:financial_ccounting/features/profile/presentation/page/theme_page.dart';
import 'package:financial_ccounting/features/progress/presentation/page/progress_page.dart';
import 'package:financial_ccounting/features/splash_screen/splash_animation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/profile/presentation/page/support_page.dart';

final router = Provider<GoRouter>((ref) {
  final user = ref.watch(isLoginProvider);

  return GoRouter(
    errorBuilder: (context, state) => NotFoundPage(),
    initialLocation: '/splash',
    redirect: (context, state) {
      final isSplashPage = state.uri.toString() == '/splash';
      if (isSplashPage) return null;

      final isAuthFlow = [
        '/auth',
        '/login',
        '/register',
      ].contains(state.uri.toString());

      if (!user && !isAuthFlow) return '/auth';
      if (user && isAuthFlow) return '/home';
      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        pageBuilder: (context, state) => NoTransitionPage(child: SplashPage()),
      ),
      GoRoute(
        path: '/auth',
        pageBuilder: (context, state) => NoTransitionPage(child: AuthPage()),
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => NoTransitionPage(child: LoginPage()),
      ),
      GoRoute(
        path: '/register',
        pageBuilder: (context, state) =>
            NoTransitionPage(child: RegisterPage()),
      ),
      ShellRoute(
        builder: (context, state, child) => NavBar(child: child),
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: MainFinancePage()),
            routes: [
              GoRoute(
                path: 'categories',
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: AllCategoriesPage()),
              ),
            ],
          ),
          GoRoute(
            path: '/history',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: HistoryPage()),
          ),
          GoRoute(
            path: '/add',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: AddFinancePage()),
          ),
          GoRoute(
            path: '/progress',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: ProgressPage()),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: ProfilePage()),
            routes: [
              GoRoute(
                path: 'theme',
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: ThemePage()),
              ),
              GoRoute(
                path: 'currency',
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: CurrencyPage()),
              ),
              GoRoute(
                path: 'language',
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: LanguagePage()),
              ),
              GoRoute(
                path: 'support',
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: SupportPage()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
