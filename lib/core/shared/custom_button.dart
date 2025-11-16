import 'package:course_learning/core/utils/constants.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),

      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.regular14.copyWith(color: Color(0xFFFDFDFD)),
      ),
    );
  }
}
