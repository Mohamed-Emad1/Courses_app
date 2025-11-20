import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CourseSelectionItem extends StatelessWidget {
  const CourseSelectionItem({
    super.key,
    required this.courseName,
    this.onTap,
    required this.isSelected,
  });

  final String courseName;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            width: isSelected ? 2 : 1,
            color: isSelected
                ? AppColors.primaryColor
                : const Color(0XFF9D9B9B),
          ),
        ),
        child: Text(
          courseName,
          style: AppStyles.regular18.copyWith(
            color: isSelected
                ? AppColors.primaryColor
                : const Color(0XFF181818),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
