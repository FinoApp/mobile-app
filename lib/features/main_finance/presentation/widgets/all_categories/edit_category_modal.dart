import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/add_finance/utils/fields_validator.dart';
import 'package:financial_ccounting/features/main_finance/data/providers/category_repository_provider.dart';
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
    super.dispose();
    titleController.dispose();
    emojiController.dispose();
  }

  @override
  void initState() {
    titleController = TextEditingController(text: widget.category.title);
    emojiController = TextEditingController(text: widget.category.icon);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    return Dialog(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Edit category', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 14),
            Form(
              key: globalKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) => fieldsValidator(value),
                    controller: titleController,
                    maxLength: 30,
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      hint: Text(
                        'Enter new title',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isLight ? Colors.black38 : Colors.white38,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    validator: (value) => fieldsValidator(value),
                    maxLength: 2,
                    controller: emojiController,
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      hint: Text(
                        'Enter initials or emoji',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isLight ? Colors.black38 : Colors.white38,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            context.pop();
                          },
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
                      SizedBox(width: 4),
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            if (globalKey.currentState!.validate()) {
                              try {
                                await ref
                                    .read(categoryRepositoryProvider)
                                    .editCategory(
                                      widget.categoryId,
                                      EditCateogoryModel(
                                        title: titleController.text,
                                        icon: emojiController.text,
                                      ),
                                    );
                                showSuccessSnackbar(
                                  context,
                                  'Category edited successfully',
                                );
                                ref.invalidate(categoryListProvider);
                                context.pop();
                              } catch (e) {
                                print(e);
                              }
                            }
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
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withAlpha(150),

                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Center(
                              child: Text(
                                'Edit',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: isLight
                                          ? Theme.of(
                                              context,
                                            ).colorScheme.onPrimary
                                          : Theme.of(
                                              context,
                                            ).colorScheme.onSurface,
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
