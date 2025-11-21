import 'package:course_learning/features/auth/presentation/views/widgets/auth_upper.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/login_sheet_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthUpper(),
        Gap(140),
        Expanded(
          child: CustomBottomSheet(
            sheetChild: SingleChildScrollView(child: LoginSheetBody()),
          ),
        ),
      ],
    );
  }
}
