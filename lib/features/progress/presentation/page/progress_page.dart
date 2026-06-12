import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgressPage extends ConsumerWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(localizationProvider);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          l10n.progressPageTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        toolbarHeight: 46,
      ),
      body: Center(child: Text(l10n.comingSoon)),
    );
  }
}
