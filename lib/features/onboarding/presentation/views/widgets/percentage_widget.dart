import 'package:course_learning/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentageWidget extends StatelessWidget {
  const PercentageWidget({super.key, required this.percent});
  final double percent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: LinearPercentIndicator(
        animation: true,
        animationDuration: 500,
        lineHeight: 8.0,
        percent: percent,
        backgroundColor: AppColors.backgroundColor,
        progressColor: AppColors.primaryColor,
        barRadius: const Radius.circular(10),
      ),
    );
  }
}
