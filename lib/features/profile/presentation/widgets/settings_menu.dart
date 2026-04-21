import 'package:financial_ccounting/core/widgets/divider.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/settings_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Column(
        children: [
          SettingsItem(
            icon: CupertinoIcons.moon,
            text: 'Dark Mode',
            onPressed: () {
              context.push('/profile/theme');
            },
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: CupertinoIcons.arrow_2_circlepath,
            text: 'Currency',
            onPressed: () {
              context.push('/profile/currency');
            },
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: CupertinoIcons.globe,
            text: 'Language',
            onPressed: () {
              context.push('/profile/language');
            },
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: Icons.notifications_active_outlined,
            text: 'Notifications',
            onPressed: () {},
            isActive: false,
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: Icons.lock_outline,
            text: 'Safety',
            onPressed: () {},
            isActive: false,
          ),
          CastomDivider(left: 20, right: 20),
          SettingsItem(
            icon: CupertinoIcons.question_circle,
            text: 'Help',
            onPressed: () {
              context.push("/profile/support");
            },
          ),
        ],
      ),
    );
  }
}
