import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/shared/custom_text_form_field.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:course_learning/generated/l10n.dart';
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
          const Gap(56),
           Text(S.of(context).register, style: AppStyles.regular18),
          const Gap(26),

          const Gap(26),
           CustomTextFormField(hintText: S.of(context).email),
          const Gap(35),
           CustomTextFormField(hintText: S.of(context).password, obscureText: true),
          const Gap(35),
           CustomTextFormField(hintText:S.of(context).phoneNumber),
          const Gap(26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(text: S.of(context).register, onPressed: () {}),
            ),
          ),
          const Gap(25),
          const HaveAnAccount(),
          const Gap(70),
        ],
      ),
    );
  }
}
