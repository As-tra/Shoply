import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_router.dart';

void main() {
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
