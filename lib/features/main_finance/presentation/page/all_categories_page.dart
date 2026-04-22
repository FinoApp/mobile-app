import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/add_finance/utils/fields_validator.dart';
import 'package:financial_ccounting/features/main_finance/data/providers/category_repository_provider.dart';
import 'package:financial_ccounting/features/main_finance/presentation/providers/select_color_provider.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/all_categories/category_card.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/all_categories/edit_category_modal.dart';
import 'package:financial_ccounting/features/main_finance/presentation/widgets/all_categories/info_category_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/data/providers/lang_currency_provider.dart';

class AllCategoriesPage extends ConsumerWidget {
  const AllCategoriesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryList = ref.watch(categoryListProvider);
    final currency = ref.watch(currencyProvider).symbol;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () => showDialog(
                context: context,
                builder: (context) => ModalForAddCategory(),
              ),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSecondary.withAlpha(20),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.add_rounded,
                  color: Theme.of(context).colorScheme.primary,
                  size: 22,
                ),
              ),
            ),
          ),
        ],
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text('Categories', style: Theme.of(context).textTheme.bodyLarge),
        toolbarHeight: 46,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () => context.pop(),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          children: [
            InfoCategoryContainer(),
            SizedBox(height: 4),
            categoryList.when(
              data: (data) => Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final category = data[index];
                    return Column(
                      children: [
                        Slidable(
                          endActionPane: ActionPane(
                            extentRatio: 0.35,
                            motion: BehindMotion(),
                            children: [
                              CustomSlidableAction(
                                onPressed: (context) {
                                  showDialog(
                                    context: context,
                                    builder: (context) => EditCategoryModal(
                                      categoryId: category.id,
                                      category: category,
                                    ),
                                  );
                                },
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary.withAlpha(20),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                    size: 22,
                                  ),
                                ),
                              ),
                              CustomSlidableAction(
                                onPressed: (context) async {
                                  await ref
                                      .read(categoryRepositoryProvider)
                                      .deleteCategory(category.id);
                                  ref.invalidate(categoryListProvider);
                                },
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.error.withAlpha(20),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    Icons.delete_outline_rounded,
                                    color: Theme.of(context).colorScheme.error,
                                    size: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          child: CategoryCard(
                            currency: currency,
                            summary: category.total ?? 0.0,
                            category: category.title,
                            color: category.color,
                            icon: category.icon,
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    );
                  },
                ),
              ),
              error: (e, _) {
                return Center(child: Text('Something went wrong, $e'));
              },
              loading: () => Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}

class ModalForAddCategory extends ConsumerStatefulWidget {
  const ModalForAddCategory({super.key});

  @override
  ConsumerState<ModalForAddCategory> createState() =>
      _ModalForAddCategoryState();
}

class _ModalForAddCategoryState extends ConsumerState<ModalForAddCategory> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    titleController.dispose();
    iconController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final selectColor = ref.watch(selectedColorProvider);

    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.85,
        ),
        child: SingleChildScrollView(
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
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withAlpha(25),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.add_rounded,
                      color: Theme.of(context).colorScheme.primary,
                      size: 22,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'New Category',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Form(
                key: globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    SizedBox(height: 6),
                    TextFormField(
                      validator: (value) => fieldsValidator(value),
                      controller: titleController,
                      maxLength: 30,
                      decoration: _inputDecoration(context, 'Enter title'),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Icon',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    SizedBox(height: 6),
                    TextFormField(
                      validator: (value) => fieldsValidator(value),
                      maxLength: 2,
                      controller: iconController,
                      decoration: _inputDecoration(context, 'Enter emoji'),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Color',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 140,
                      child: BlockPicker(
                        pickerColor: Color(
                          int.parse(
                            'FF${selectColor.replaceFirst('#', '')}',
                            radix: 16,
                          ),
                        ),
                        layoutBuilder: (context, colors, child) {
                          return GridView.count(
                            crossAxisCount: 6,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,

                            children: colors
                                .map((color) => child(color))
                                .toList(),
                          );
                        },
                        itemBuilder: (color, isCurrentColor, changeColor) {
                          return GestureDetector(
                            onTap: changeColor,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 150),
                              padding: EdgeInsets.all(isCurrentColor ? 2 : 0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: isCurrentColor
                                    ? Border.all(color: color, width: 2)
                                    : null,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: color,
                                  shape: BoxShape.circle,
                                ),
                                child: isCurrentColor
                                    ? Icon(
                                        Icons.check_rounded,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    : null,
                              ),
                            ),
                          );
                        },
                        onColorChanged: (color) {
                          final hex =
                              '#${color.toARGB32().toRadixString(16).substring(2).toUpperCase()}';
                          ref.read(selectedColorProvider.notifier).state = hex;
                        },
                      ),
                    ),
                    SizedBox(height: 20),

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
                                  'Cancel',
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
                                      .read(categoryRepositoryProvider)
                                      .createCategory(
                                        CategoryRequest(
                                          title: titleController.text,
                                          color: selectColor,
                                          icon: iconController.text,
                                        ),
                                      );
                                  ref.invalidate(categoryListProvider);
                                  if (context.mounted) {
                                    context.pop();
                                  }
                                } catch (e) {
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Failed to create category',
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
                                  'Create',
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
      ),
    );
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
}
