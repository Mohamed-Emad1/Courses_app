import 'package:course_learning/features/auth/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/register_sheet_body.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/auth_upper.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthUpper(),
        Spacer(),
        CustomBottomSheet(sheetChild: RegisterSheetBody()),
      ],
    );
  }
}
