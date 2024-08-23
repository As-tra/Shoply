import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SHOPLY.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                letterSpacing: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
