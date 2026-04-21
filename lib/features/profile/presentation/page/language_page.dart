import 'package:financial_ccounting/core/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/language_enum.dart';
import '../../../../core/models/user_model/user.dart';
import '../../../../core/providers/user_id_provdier.dart';
import '../../../../core/providers/user_provider.dart';
import '../../../../core/providers/user_repository_provider.dart';
import '../../../../core/theme/color.dart';
import '../../../add_finance/presentation/widgets/snackbar_success.dart';
import '../../../auth/data/providers/lang_currency_provider.dart';

class LanguagePage extends ConsumerWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(languageProvider);
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
              'Language',
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
                final userLang = LanguageEnum.values.firstWhere(
                  (l) => l.name == user.language,
                );
                ref.read(languageProvider.notifier).state = userLang;
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) =>
                          CastomDivider(left: 16, right: 16),
                      itemCount: LanguageEnum.values.length,
                      itemBuilder: (context, index) {
                        final language = LanguageEnum.values[index];
                        final isSelected = language == currentLanguage;
                        return ListTile(
                          onTap: () =>
                              ref.read(languageProvider.notifier).state =
                                  language,
                          trailing: isSelected
                              ? Icon(
                                  Icons.check,
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              : null,
                          leading: Text(
                            language.flag,
                            style: TextStyle(fontSize: 24),
                          ),
                          title: Text(
                            language.title,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
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
                              EditUser(language: currentLanguage.name),
                            );
                        showSuccessSnackbar(
                          context,
                          'Language edited successfully',
                        );
                        ref.invalidate(userProvider);
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
                          'Change language',
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
