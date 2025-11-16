import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthUpper extends StatelessWidget {
  const AuthUpper({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsLogo),
            const SizedBox(width: 10),
            Text(
              "EDUCA APP",
              style: AppStyles.regular24.copyWith(fontFamily: 'Lilita One'),
            ),
          ],
        ),
        Gap(72),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 95),
          child: const Text(
            "Hi, Let’s Make a Journey with Us",
            style: AppStyles.regular24,
            textAlign: TextAlign.center,
          ),
        ),
        Gap(35),
      ],
    );
  }
}
