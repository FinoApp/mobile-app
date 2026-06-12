import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/auth/login/presentation/page/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(localizationProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryFixed,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 26),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),

          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  l10n.signIn,
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge!.copyWith(fontSize: 44),
                ),
                SizedBox(height: 50),
                LoginForm(),
                SizedBox(height: 50),
                // Row(
                //   children: [
                //     Expanded(
                //       flex: 2,
                //       child: Divider(
                //         thickness: 1.5,
                //         indent: 54,
                //         endIndent: 10,
                //         color: Theme.of(context).colorScheme.secondary,
                //       ),
                //     ),
                //     Text('OR', style: Theme.of(context).textTheme.displayLarge),
                //     Expanded(
                //       flex: 2,
                //       child: Divider(
                //         thickness: 1.5,
                //         indent: 10,
                //         endIndent: 54,
                //         color: Theme.of(context).colorScheme.secondary,
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 28),
                // Text(
                //   'Sign Up With',
                //   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //     color: Theme.of(context).colorScheme.onSurface,
                //   ),
                // ),
                // LoginQauth(),
                // SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.dontHaveAccount,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(width: 6),
                    GestureDetector(
                      onTap: () => context.go('/register'),
                      child: Text(
                        l10n.signUp,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
