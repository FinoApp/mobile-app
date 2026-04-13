import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/providers/user_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = FutureProvider<User>((ref) {
  final userId = ref.watch(userIdProvider);
  if (userId == null) return Future.error('no user id');

  return ref.read(userRepositoryProvider).getUserById(userId.toString());
});
