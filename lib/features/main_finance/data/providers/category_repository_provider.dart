import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/core/models/category_model/category_model.dart';

import 'package:financial_ccounting/features/main_finance/data/repositories/category_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryListProvider = FutureProvider<List<GetCategoryModel>>((ref) {
  final repository = getIt<CategoryRepository>();
  return repository.getCategory();
});
