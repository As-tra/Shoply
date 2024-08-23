import 'package:go_router/go_router.dart';
import 'package:shoply/features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:shoply/features/Onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static const kOnboarding = '/Onboarding';
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
    ],
  );
}
