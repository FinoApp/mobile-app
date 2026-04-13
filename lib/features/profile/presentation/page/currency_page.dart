import 'package:financial_ccounting/core/constants/currency_enum.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/providers/user_provider.dart';
import 'package:financial_ccounting/core/providers/user_repository_provider.dart';
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

    return userAsync.when(
      error: (error, stackTrace) => Center(child: Text('Someone wrong...')),
      loading: () => Center(child: CircularProgressIndicator()),
      data: (user) {
        return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            title: Text(
              'Currency',
              style: Theme.of(context).textTheme.bodyLarge,
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
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.separated(
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
                          trailing: isSelected ? Icon(Icons.check) : null,
                          leading: Text(
                            currency.symbol,
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          title: Text(currency.title),
                        );
                      },
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
                        await ref
                            .read(userRepositoryProvider)
                            .editUser(
                              userId.toString(),
                              EditUser(currency: currentCurrency.name),
                            );
                        showSuccessSnackbar(
                          context,
                          'Currency edited successfully',
                        );
                        ref.invalidate(userProvider);
                        ref.invalidate(currencyProvider);
                      } catch (e) {
                        print(e);
                      }
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
                          'Change Currency',
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
