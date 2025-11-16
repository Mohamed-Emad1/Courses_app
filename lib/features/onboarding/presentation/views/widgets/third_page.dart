import 'package:course_learning/core/routing.dart';
import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsThirdHeroImage,
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
        Gap(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: "Let’s Make a Journey",
              onPressed: () => context.go(AppRouter.kHome),
            ),
          ),
        ),
      ],
    );
  }
}
