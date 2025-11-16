import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/shared/custom_text_form_field.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterSheetBody extends StatelessWidget {
  const RegisterSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(56),
          Text("Register", style: AppStyles.regular18),
          Gap(26),

          Gap(26),
          CustomTextFormField(hintText: "Email"),
          Gap(35),
          CustomTextFormField(hintText: "Password", obscureText: true),
          Gap(35),
          CustomTextFormField(hintText: "Phone Number"),
          Gap(26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(text: "Register", onPressed: () {}),
            ),
          ),
          Gap(25),
          HaveAnAccount(),
          Gap(70),
        ],
      ),
    );
  }
}
