import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeRecommended extends StatelessWidget {
  const HomeRecommended({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "12 lessons",
                  style: AppStyles.regular10.copyWith(
                    color: const Color(0xff333333),
                  ),
                ),
              ),
              const Gap(45),
              Row(
                children: [
                  const Icon(CupertinoIcons.clock, size: 16),
                  const Gap(4),
                  Text(
                    "12h 20 m",
                    style: AppStyles.regular10.copyWith(
                      color: const Color(0xff333333),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(5),
        ],
      ),
    );
  }
}
