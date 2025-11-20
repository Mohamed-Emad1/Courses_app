import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/percentage_widget.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsFirstHeroImage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const Gap(35),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras netus mauris pulvinar suspendisse. Et sit ac lacus in rhoncus.",
            style: AppStyles.regular14,
            textAlign: TextAlign.center,
          ),
        ),

        const Gap(30),
        const PercentageWidget(percent: 0.33),
        const Gap(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: S.of(context).next,
              onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutCirc,
              ),
            ),
          ),
        ),
        const Gap(15),
        GestureDetector(
          onTap: () => controller.jumpToPage(2),
          child: Text(
            S.of(context).skip,
            style: AppStyles.regular14.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
