import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/percentage_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeRecentItem extends StatelessWidget {
  const HomeRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Assets.assetsHomeTest),
          const Gap(5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("main title", style: AppStyles.semiBold10),
          ),
          const Gap(5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("sub title", style: AppStyles.regular12),
          ),
          const Gap(5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PercentageWidget(percent: 0.5),
              Text("5/10", style: AppStyles.regular10),
            ],
          ),
          const Gap(5),
        ],
      ),
    );
  }
}
