import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoply/core/utils/service_locator.dart';
import 'firebase_options.dart';

void main() async {
  // wait for the  service locator to fully initialized
  setUpServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const Shoply(),
  );
}

class Shoply extends StatelessWidget {
  const Shoply({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
