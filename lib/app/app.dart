import 'package:financial_ccounting/core/router/routers.dart';
import 'package:financial_ccounting/core/providers/theme_provider.dart';
import 'package:financial_ccounting/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routers = ref.watch(router);
    final theme = ref.watch(themeProvider);
    return ShadApp.custom(
      themeMode: theme,
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: const ShadSlateColorScheme.dark(),
      ),

      appBuilder: (context) {
        return MaterialApp.router(
          routerConfig: routers,
          themeMode: theme,
          darkTheme: AppTheme.dark,
          theme: AppTheme.light,
        );
      },
    );
  }
}
