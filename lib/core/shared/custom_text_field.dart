import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xfff2f2f2),
        filled: true,
        prefixIcon: const Icon(CupertinoIcons.search),
        hintText: hintText,
        hintStyle: AppStyles.regular12.copyWith(color: const Color(0XFF4F4F4F)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Color(0xffE0E0E0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
    );
  }
}
