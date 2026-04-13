import 'package:financial_ccounting/features/profile/presentation/widgets/log_out_button.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/profile_card.dart';
import 'package:financial_ccounting/features/profile/presentation/widgets/settings_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text('Profile', style: Theme.of(context).textTheme.bodyLarge),
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
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
