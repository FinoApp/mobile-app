import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/core/widgets/divider.dart';
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
              child: Icon(Icons.add),
              onTap: () => showDialog(
                context: context,
                builder: (context) => ModalForAddCategory(),
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
            CastomDivider(left: 0, right: 0),
            SizedBox(height: 8),
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
                            extentRatio: 0.4,
                            motion: DrawerMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) {
                                  showDialog(
                                    context: context,
                                    builder: (context) => EditCategoryModal(
                                      categoryId: category.id,
                                      category: category,
                                    ),
                                  );
                                },
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                icon: Icons.edit,
                                label: 'Edit',
                              ),
                              SlidableAction(
                                onPressed: (context) async {
                                  await ref
                                      .read(categoryRepositoryProvider)
                                      .deleteCategory(category.id);
                                  ref.invalidate(categoryListProvider);
                                },
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Delete',
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
    super.dispose();
    titleController.dispose();
    iconController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    final selectColor = ref.watch(selectedColorProvider);

    return Dialog(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add new category',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
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
                        'Enter title',
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
                    controller: iconController,
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
                  SizedBox(height: 8),

                  SingleChildScrollView(
                    child: SizedBox(
                      width: 230,
                      height: 175,
                      child: Consumer(
                        builder: (context, ref, child) {
                          return BlockPicker(
                            pickerColor: Color(
                              int.parse(
                                'FF${selectColor.replaceFirst('#', '')}',
                                radix: 16,
                              ),
                            ),
                            onColorChanged: (color) {
                              final hex =
                                  '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
                              ref.read(selectedColorProvider.notifier).state =
                                  hex;

                              // hex = ref.read(selectedColorProvider);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  GestureDetector(
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
                          context.pop();
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Failed to update expense')),
                          );
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
                          'Add',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
