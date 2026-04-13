import 'package:financial_ccounting/core/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ThemePage extends ConsumerWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme', style: Theme.of(context).textTheme.bodyLarge),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () => context.pop(),
        ),
        toolbarHeight: 46,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: Column(
          children: [
            RadioGroup(
              groupValue: theme,
              onChanged: (value) =>
                  ref.read(themeProvider.notifier).state = value!,
              child: Column(
                children: [
                  RadioListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 8,
                    ),
                    value: ThemeMode.light,
                    title: Text(
                      'Light Theme',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 18),
                    ),
                  ),
                  RadioListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 8,
                    ),
                    value: ThemeMode.dark,
                    title: Text(
                      'Dark Theme',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 18),
                    ),
                  ),
                  RadioListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 8,
                    ),
                    value: ThemeMode.system,
                    title: Text(
                      'System Theme',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
