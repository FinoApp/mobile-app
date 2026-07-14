import 'package:financial_ccounting/features/main_finance/presentation/providers/category_usecase_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryQuantityProvider = Provider<int>((ref) {
  return ref
      .watch(categoryListProvider)
      .maybeWhen(data: (list) => list.length, orElse: () => 0);
});
