import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/log_out_button.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/profile_card.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/settings_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(localizationProvider);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.profilePageTitle, style: Theme.of(context).textTheme.bodyMedium),
        toolbarHeight: 46,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProfileCard(),
                SizedBox(height: 12),
                SettingsMenu(),
                SizedBox(height: 12),
                LogOutButton(),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    l10n.version,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
