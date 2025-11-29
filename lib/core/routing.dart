import 'package:course_learning/core/services/service_locator.dart';
import 'package:course_learning/features/auth/domain/repos/auth_repo.dart';
import 'package:course_learning/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:course_learning/features/auth/presentation/views/login_view.dart';
import 'package:course_learning/features/auth/presentation/views/register_view.dart';
import 'package:course_learning/features/home/presentation/views/home_view.dart';
import 'package:course_learning/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:course_learning/features/onboarding/presentation/views/user_choice_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kOnboarding = '/';
  static const String kHome = '/home';
  static const String kRegister = '/register';
  static const String kLogin = '/login';
  static const String kUserChoice = '/user_choice';

  static final router = GoRouter(
    initialLocation: kHome,
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(path: kHome, builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: kRegister,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(authRepo: getIt<AuthRepo>()),
          child: const RegisterView(),
        ),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(authRepo: getIt<AuthRepo>()),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: kUserChoice,
        builder: (context, state) => const UserChoiceView(),
      ),
    ],
  );
}
