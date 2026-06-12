import 'package:financial_ccounting/core/widgets/divider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/settings_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SettingsMenu extends ConsumerWidget {
  const SettingsMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(localizationProvider);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Column(
        children: [
          SettingsItem(
            icon: CupertinoIcons.moon,
            text: l10n.darkMode,
            onPressed: () {
              context.push('/profile/theme');
            },
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: CupertinoIcons.arrow_2_circlepath,
            text: l10n.currency,
            onPressed: () {
              context.push('/profile/currency');
            },
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: CupertinoIcons.globe,
            text: l10n.language,
            onPressed: () {
              context.push('/profile/language');
            },
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: Icons.notifications_active_outlined,
            text: l10n.notifications,
            onPressed: () {},
            isActive: false,
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: Icons.lock_outline,
            text: l10n.safety,
            onPressed: () {},
            isActive: false,
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: CupertinoIcons.question_circle,
            text: l10n.help,
            onPressed: () {
              context.push("/profile/support");
            },
          ),
        ],
      ),
    );
  }
}
