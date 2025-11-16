import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/percentage_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsSecondHeroImage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const Gap(35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras netus mauris pulvinar suspendisse. Et sit ac lacus in rhoncus.",
            style: AppStyles.regular14,
            textAlign: TextAlign.center,
          ),
        ),
        Gap(30),
        PercentageWidget(percent: 0.66),
        Gap(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: "Next",
              onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutCirc,
              ),
            ),
          ),
        ),
        Gap(15),
        GestureDetector(
          onTap: () => controller.jumpToPage(2),
          child: Text(
            "Skip",
            style: AppStyles.regular14.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
