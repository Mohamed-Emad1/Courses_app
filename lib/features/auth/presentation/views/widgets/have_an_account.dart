import 'package:course_learning/core/routing.dart';
import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Have an account?", style: AppStyles.regular12),
        GestureDetector(
          onTap: () => GoRouter.of(context).pushReplacement(AppRouter.kLogin),
          child: Text(
            " Login",
            style: AppStyles.regular12.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
