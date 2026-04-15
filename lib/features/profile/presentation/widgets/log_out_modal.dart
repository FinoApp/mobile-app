import 'package:financial_ccounting/core/providers/is_login_provider.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/providers/user_provider.dart';
import 'package:financial_ccounting/features/auth/data/providers/auth_repository_provider.dart';
import 'package:financial_ccounting/features/add_finance/data/providers/expense_repository_provider.dart';
import 'package:financial_ccounting/features/main_finance/data/providers/category_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LogOutModal extends ConsumerWidget {
  const LogOutModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return Dialog(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/log_out_image.png', width: 80, height: 80),
            SizedBox(height: 14),
            Text(
              'Are you sure you want to exit?',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () => context.pop(),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(20),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.black12),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: isLight
                                    ? Colors.black54
                                    : Colors.white54,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () async {
                      await ref.read(authRepositoryProvider).logout();
                      ref.invalidate(categoryListProvider);
                      ref.invalidate(expenseListProvider);
                      ref.invalidate(userProvider);
                      ref.read(userIdProvider.notifier).state = null;
                      ref.read(isLoginProvider.notifier).state = false;
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(40),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Theme.of(context).colorScheme.error,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          'Log Out',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: isLight
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
