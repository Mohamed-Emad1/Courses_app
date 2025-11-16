import 'package:course_learning/features/home/presentation/views/home_view.dart';
import 'package:course_learning/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String onboarding = '/';
  static const String home = '/home';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
