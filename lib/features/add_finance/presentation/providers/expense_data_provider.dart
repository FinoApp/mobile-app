import 'package:flutter_riverpod/legacy.dart';

final selectDateProvider = StateProvider.autoDispose<DateTime>((ref) => DateTime.now());

final selectedIndexCategoryProvider = StateProvider.autoDispose<int?>((ref) => null);

final amountProvider = StateProvider.autoDispose<String>((ref) => '');
