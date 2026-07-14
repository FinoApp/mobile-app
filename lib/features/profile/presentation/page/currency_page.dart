import 'package:financial_ccounting/core/constants/currency_enum.dart';
import 'package:financial_ccounting/core/data/user_repository.dart';
import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/providers/user_provider.dart';
import 'package:financial_ccounting/core/widgets/divider.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/color.dart';
import '../../../add_finance/presentation/widgets/snackbar_success.dart';

class CurrencyPage extends ConsumerWidget {
  const CurrencyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentCurrency = ref.watch(currencyProvider);
    final userAsync = ref.watch(userProvider);
    final userId = ref.watch(userIdProvider);
    final l10n = ref.watch(localizationProvider);

    return userAsync.when(
      error: (error, stackTrace) =>
          Center(child: Text(l10n.somethingWentWrong)),
      loading: () => Center(child: CircularProgressIndicator()),
      data: (user) {
        return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            title: Text(
              l10n.currencyPageTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            leading: GestureDetector(
              child: Icon(Icons.arrow_back_ios),
              onTap: () => context.pop(),
            ),
            toolbarHeight: 46,
          ),
          body: PopScope(
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) {
                final userCurrency = CurrencyEnum.values.firstWhere(
                  (l) => l.name == user.currency,
                );
                ref.read(currencyProvider.notifier).state = userCurrency;
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Material(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(12),
                      clipBehavior: Clip.antiAlias,
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        separatorBuilder: (context, index) =>
                            CastomDivider(left: 16, right: 16),
                        itemCount: CurrencyEnum.values.length,
                        itemBuilder: (context, index) {
                          final currency = CurrencyEnum.values[index];
                          final isSelected = currency == currentCurrency;
                          return ListTile(
                            onTap: () =>
                                ref.read(currencyProvider.notifier).state =
                                    currency,
                            trailing: isSelected
                                ? Icon(
                                    Icons.check,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  )
                                : null,
                            leading: Text(
                              currency.symbol,
                              style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            title: Text(
                              currency.title,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.onPrimary,
                  child: GestureDetector(
                    onTap: () async {
                      try {
                        await getIt<UserRepository>().editUser(
                          userId.toString(),
                          EditUser(currency: currentCurrency.name),
                        );
                        ref.invalidate(userProvider);
                        ref.invalidate(currencyProvider);
                        if (context.mounted) {
                          showSuccessSnackbar(
                            context,
                            l10n.currencyEditedSuccessfully,
                          );
                        }
                      } catch (_) {}
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          l10n.changeCurrency,
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: AppColors.mainTextColorLight),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
