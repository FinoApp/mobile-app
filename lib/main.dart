import 'package:financial_ccounting/app/app.dart';
import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/core/providers/is_login_provider.dart';
// import 'package:financial_ccounting/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  await configureDependencies(
    onUnauthorized: () async {
      container.read(isLoginProvider.notifier).state = false;
    },
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]); // запрет на поворот

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}
