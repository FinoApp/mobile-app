import 'package:financial_ccounting/core/providers/theme_provider.dart';
import 'package:financial_ccounting/core/widgets/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ThemePage extends ConsumerWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeProvider);

    final themes = [
      (ThemeMode.light, 'Light', CupertinoIcons.sun_max_fill),
      (ThemeMode.dark, 'Dark', CupertinoIcons.moon_fill),
      (ThemeMode.system, 'System', CupertinoIcons.device_phone_portrait),
    ];

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text('Theme', style: Theme.of(context).textTheme.bodyMedium),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () => context.pop(),
        ),
        toolbarHeight: 46,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) =>
                CastomDivider(left: 16, right: 16),
            itemCount: themes.length,
            itemBuilder: (context, index) {
              final (mode, title, icon) = themes[index];
              final isSelected = mode == currentTheme;

              return ListTile(
                onTap: () => ref.read(themeProvider.notifier).state = mode,
                leading: Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                  size: 22,
                ),
                title: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                trailing: isSelected
                    ? Icon(
                        Icons.check,
                        color: Theme.of(context).colorScheme.primary,
                      )
                    : null,
              );
            },
          ),
        ),
      ),
    );
  }
}
