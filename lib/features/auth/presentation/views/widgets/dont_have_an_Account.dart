import 'package:course_learning/core/routing.dart';
import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).dontHaveAnAccount, style: AppStyles.regular12),
        GestureDetector(
          onTap: () =>
              GoRouter.of(context).pushReplacement(AppRouter.kRegister),
          child: Text(
            S.of(context).register,
            style: AppStyles.regular12.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
