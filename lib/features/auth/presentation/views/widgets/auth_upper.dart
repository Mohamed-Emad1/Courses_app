import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/generated/l10n.dart';
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
        const Gap(72),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 95),
          child: Text(
            S.of(context).journey,
            style: AppStyles.regular24,
            textAlign: TextAlign.center,
          ),
        ),
        const Gap(35),
      ],
    );
  }
}
