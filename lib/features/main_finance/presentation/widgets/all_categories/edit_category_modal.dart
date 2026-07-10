import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/add_finance/utils/fields_validator.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/main_finance/presentation/providers/category_usecase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../add_finance/presentation/widgets/snackbar_success.dart';

class EditCategoryModal extends ConsumerStatefulWidget {
  final int categoryId;
  final GetCategoryModel category;

  const EditCategoryModal({
    super.key,
    required this.categoryId,
    required this.category,
  });

  @override
  ConsumerState<EditCategoryModal> createState() => _EditCategoryModalState();
}

class _EditCategoryModalState extends ConsumerState<EditCategoryModal> {
  late final TextEditingController titleController;
  late final TextEditingController emojiController;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    titleController.dispose();
    emojiController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.category.title);
    emojiController = TextEditingController(text: widget.category.icon);
  }

  InputDecoration _inputDecoration(BuildContext context, String hint) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return InputDecoration(
      fillColor: Theme.of(context).colorScheme.onPrimary,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 1.5,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 1,
          color: Theme.of(context).colorScheme.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 1.5,
          color: Theme.of(context).colorScheme.error,
        ),
      ),
      hintText: hint,
      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: isLight ? Colors.black38 : Colors.white38,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final l10n = ref.watch(localizationProvider);

    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withAlpha(25),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.edit_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 22,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  l10n.editCategory,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Form
            Form(
              key: globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.titleLabel,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    validator: (value) => fieldsValidator(value, l10n),
                    controller: titleController,
                    maxLength: 30,
                    decoration: _inputDecoration(context, l10n.enterTitleHint),
                  ),
                  SizedBox(height: 4),
                  Text(
                    l10n.icon,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    validator: (value) => fieldsValidator(value, l10n),
                    maxLength: 2,
                    controller: emojiController,
                    decoration: _inputDecoration(context, l10n.enterEmojiHint),
                  ),
                  SizedBox(height: 16),

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => context.pop(),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: isLight
                                    ? Colors.black12
                                    : Colors.white24,
                              ),
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            child: Center(
                              child: Text(
                                l10n.cancel,
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w500,
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
                        child: GestureDetector(
                          onTap: () async {
                            if (globalKey.currentState!.validate()) {
                              try {
                                await ref
                                    .read(editCategoryUsecaseProvider)
                                    .call(
                                      widget.categoryId,
                                      EditCateogoryModel(
                                        title: titleController.text,
                                        icon: emojiController.text,
                                      ),
                                    );

                                ref.invalidate(categoryListProvider);
                                if (context.mounted) {
                                  showSuccessSnackbar(
                                    context,
                                    l10n.categoryUpdated,
                                  );
                                  context.pop();
                                }
                              } catch (e) {
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        l10n.failedToUpdateCategory,
                                      ),
                                    ),
                                  );
                                }
                              }
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withAlpha(220),
                            ),
                            child: Center(
                              child: Text(
                                l10n.save,
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
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
          ],
        ),
      ),
    );
  }
}
