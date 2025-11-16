import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/shared/custom_text_form_field.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/dont_have_an_Account.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginSheetBody extends StatelessWidget {
  const LoginSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(56),
          Text("Login", style: AppStyles.regular18),
          Gap(26),

          Gap(26),
          CustomTextFormField(hintText: "Email"),
          Gap(35),
          CustomTextFormField(hintText: "Password", obscureText: true),
          Gap(26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(text: "Login", onPressed: () {}),
            ),
          ),
          Gap(25),
          DontHaveAnAccount(),
          Gap(70),
        ],
      ),
    );
  }
}
