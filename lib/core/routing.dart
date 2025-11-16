import 'package:course_learning/features/home/presentation/views/home_view.dart';
import 'package:course_learning/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kOnboarding = '/';
  static const String kHome = '/home';

  static final router = GoRouter(
    initialLocation: kOnboarding,
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
