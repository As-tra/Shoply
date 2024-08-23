import 'package:go_router/go_router.dart';
import 'package:shoply/features/Onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
