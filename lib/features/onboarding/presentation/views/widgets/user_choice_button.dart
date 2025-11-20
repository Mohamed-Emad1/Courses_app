import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';

class UserChoiceButton extends StatelessWidget {
  const UserChoiceButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        height: 64,
        width: double.infinity,
        child: CustomButton(
          onPressed: onPressed,
          text: S.of(context).next,
          textStyle: AppStyles.regular18.copyWith(
            color: const Color(0xffFDFDFD),
          ),
        ),
      ),
    );
  }
}
