// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final isLoginProvider = AsyncNotifierProvider<AuthNotifier, bool>(() {
//   return AuthNotifier();
// });

// class AuthNotifier extends AsyncNotifier<bool> {
//   @override
//   Future<bool> build() async {
//     final String? token = await ref.read(tokenService).getAccessToken()
//     return token != null;
//   }

//   Future<void> logOut() async {
//     state = AsyncData(false);
//     // await ref.read(tolenService).logOut();
//   }
// }

import 'package:flutter_riverpod/legacy.dart';

final isLoginProvider = StateProvider((ref) => false);
