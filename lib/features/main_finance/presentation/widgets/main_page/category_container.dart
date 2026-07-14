import 'package:financial_ccounting/core/theme/color.dart';
import 'package:financial_ccounting/features/main_finance/presentation/providers/category_quantity_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CategoryContainer extends ConsumerWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final categoryQualtity = ref.watch(categoryQuantityProvider);

    return GestureDetector(
      onTap: () {
        context.push('/home/categories');
      },

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Theme.of(context).colorScheme.secondary,
        ),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'All category',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.mainTextColorLight,
              ),
            ),
            Text(
              categoryQualtity.toString(),
              style: TextStyle(
                color: isLight
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
