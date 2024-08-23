import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_router.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const Shoply(),
    ),
  );
}

class Shoply extends StatelessWidget {
  const Shoply({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: AppRouter.router,
    );
  }
}
