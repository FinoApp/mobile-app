import 'package:financial_ccounting/features/add_finance/presentation/widgets/oval_figure.dart';
import 'package:financial_ccounting/features/main_finance/data/providers/category_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/expense_data_provider.dart';

class Category extends ConsumerWidget {
  final double radius;
  const Category({super.key, required this.radius});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(selectedIndexCategoryProvider);
    final categoryList = ref.watch(categoryListProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: categoryList.when(
        loading: () => const CircularProgressIndicator(),
        error: (e, _) => Text(e.toString()),
        data: (data) => Row(
          spacing: 16,
          children: List.generate(
            data.length,
            (index) => OvalFigure(
              radius: radius,
              icons: data[index].icon,
              title: data[index].title,
              color: data[index].color,
              isSelected: isSelected == data[index].id,
              onTap: () {
                final id = data[index].id;
                ref.read(selectedIndexCategoryProvider.notifier).state = id;
              },
            ),
          ),
        ),
      ),
    );
  }
}
