import 'package:go_router/go_router.dart';
import 'package:shoply/features/Authentication/data/models/otp_view_model.dart';
import 'package:shoply/features/Authentication/presentation/views/login_with_email_view.dart';
import 'package:shoply/features/Authentication/presentation/views/login_with_phone_view.dart';
import 'package:shoply/features/Authentication/presentation/views/otp_verification_view.dart';
import 'package:shoply/features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:shoply/features/Onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static const kOnboarding = '/Onboarding';
  static const kLoginWithPhone = '/login_with_phone';
  static const kOtpVerificaton = '/otp_verification';
  static const kLoginWithEmail = '/login_with_email';
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
        path: kOtpVerificaton,
        builder: (context, state) => OtpVerificationView(
          otpViewModel: state.extra as OtpViewModel,
        ),
      ),
      GoRoute(
        path: kOtpVerificaton,
        builder: (context, state) => const LoginWithPhoneView(),
      ),
      GoRoute(
        path: kLoginWithEmail,
        builder: (context, state) => const LoginWithEmailView(),
      ),
    ],
  );
}
