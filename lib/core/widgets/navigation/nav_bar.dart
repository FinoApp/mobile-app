import 'package:financial_ccounting/core/l10n/app_localizations.dart';
import 'package:financial_ccounting/core/widgets/navigation/nav_item.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NavBar extends ConsumerWidget {
  final Widget child;
  const NavBar({super.key, required this.child});

  static const _tabs = ['/home', '/progress', '/add', '/history', '/profile'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = GoRouterState.of(context).uri.toString();
    final l10n = ref.watch(localizationProvider);

    final currentIndex = _tabs.indexWhere((tab) {
      if (tab == '/home') return location == '/home';
      return location.startsWith(tab);
    });

    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primary = Theme.of(context).colorScheme.primary;

    final barColor = isDark
        ? const Color(0xFF1A2420).withValues(alpha: 0.95)
        : Colors.white.withValues(alpha: 0.95);

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 34),
        child: _AddButton(primary: primary),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _FloatingNavBar(
        barColor: barColor,
        isDark: isDark,
        currentIndex: currentIndex,
        onTap: (i) => context.go(_tabs[i]),
        l10n: l10n,
      ),
      body: child,
    );
  }
}

class _AddButton extends StatelessWidget {
  final Color primary;
  const _AddButton({required this.primary});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/add'),
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [primary, primary.withValues(alpha: 0.75)],
          ),
          boxShadow: [
            BoxShadow(
              color: primary.withValues(alpha: 0.2),
              blurRadius: 8,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Icon(CupertinoIcons.add, color: Colors.white, size: 26),
      ),
    );
  }
}

class _FloatingNavBar extends StatelessWidget {
  final Color barColor;
  final bool isDark;
  final int currentIndex;
  final void Function(int) onTap;
  final AppLocalizations l10n;

  const _FloatingNavBar({
    required this.barColor,
    required this.isDark,
    required this.currentIndex,
    required this.onTap,
    required this.l10n,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: barColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.4 : 0.12),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
          border: Border.all(
            color: isDark
                ? Colors.white.withValues(alpha: 0.06)
                : Colors.black.withValues(alpha: 0.05),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavItem(
                    icon: Icons.grid_view_outlined,
                    iconSelected: Icons.grid_view_rounded,
                    text: l10n.navSpending,
                    selected: currentIndex == 0,
                    onTap: () => onTap(0),
                  ),
                  NavItem(
                    icon: Icons.insights_outlined,
                    iconSelected: Icons.insights,
                    text: l10n.navProgress,
                    selected: currentIndex == 1,
                    onTap: () => onTap(1),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 56),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavItem(
                    icon: Icons.receipt_long_outlined,
                    iconSelected: Icons.receipt_long,
                    text: l10n.navHistory,
                    selected: currentIndex == 3,
                    onTap: () => onTap(3),
                  ),
                  NavItem(
                    icon: Icons.person_outline_rounded,
                    iconSelected: Icons.person_rounded,
                    text: l10n.navProfile,
                    selected: currentIndex == 4,
                    onTap: () => onTap(4),
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
