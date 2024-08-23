import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          GoRouter.of(context).push(AppRouter.kOnboarding);
        }
      },
    );
  }
  

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
