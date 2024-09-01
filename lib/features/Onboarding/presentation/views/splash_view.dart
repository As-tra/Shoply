import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoply/core/services/shared_pref.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/app_router.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/splash_view_body.dart';

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
        // check if the widget tree don't change so we don't face any problems
        if (mounted) {
          if (SharedPrefrenceHelper().getUserState() == null) {
            SharedPrefrenceHelper().saveUserState();
            GoRouter.of(context).push(AppRouter.kOnboarding);
          } else {
            GoRouter.of(context).push(AppRouter.kLoginWithEmail);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.primary, body: SplashViewBody());
  }
}
