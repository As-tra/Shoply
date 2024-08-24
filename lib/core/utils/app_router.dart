import 'package:go_router/go_router.dart';
import 'package:shoply/features/Authentication/presentation/views/login_with_phone_view.dart';
import 'package:shoply/features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:shoply/features/Onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static const kOnboarding = '/Onboarding';
  static const kLoginWithPhone = '/login_with_phone';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kLoginWithPhone,
        builder: (context, state) => const LoginWithPhoneView(),
      ),
    ],
  );
}
