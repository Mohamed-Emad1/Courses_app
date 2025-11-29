import 'package:course_learning/core/routing.dart';
import 'package:course_learning/core/shared/build_snack_bar.dart';
import 'package:course_learning/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/login_sheet_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginViewSheetBlocConsumer extends StatelessWidget {
  const LoginViewSheetBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          GoRouter.of(context).pushNamed(AppRouter.kHome);
        } else if (state is AuthError) {
          buildSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return const LoginSheetBody();
      },
    );
  }
}
