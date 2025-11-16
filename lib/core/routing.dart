import 'package:course_learning/features/auth/presentation/views/login_view.dart';
import 'package:course_learning/features/auth/presentation/views/register_view.dart';
import 'package:course_learning/features/home/presentation/views/home_view.dart';
import 'package:course_learning/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kOnboarding = '/';
  static const String kHome = '/home';
  static const String kRegister = '/register';
  static const String kLogin = '/login';

  static final router = GoRouter(
    initialLocation: kRegister,
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(path: kHome, builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: kRegister,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(path: kLogin, builder: (context, state) => const LoginView()),
    ],
  );
}
