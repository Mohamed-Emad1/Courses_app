import 'package:course_learning/core/utils/assets.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';

class SelectionTitle extends StatelessWidget {
  const SelectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.assetsHalfCircle,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 100,
          left: 120,
          right: 120,

          child: Text(
            S.of(context).select_class,
            style: AppStyles.regular24.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
