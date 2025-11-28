import 'package:course_learning/core/shared/custom_text_field.dart';
import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/home/presentation/views/widgets/home_recent_item.dart';
import 'package:course_learning/features/home/presentation/views/widgets/home_recommended.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(S.of(context).Hi, style: AppStyles.regular24),
            subtitle: Text(S.of(context).what_do_you_want),
            trailing: const Icon(
              CupertinoIcons.bell_solid,
              color: Color(0xffBDBDBD),
            ),
          ),
          const Gap(18),
          CustomTextField(hintText: S.of(context).search),
          const Gap(25),
          Text(
            S.of(context).recent_learning,
            style: AppStyles.regular14.copyWith(color: AppColors.textColor),
          ),
          const Gap(15),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const HomeRecentItem();
              },
            ),
          ),
          const Gap(25),
          Text(
            S.of(context).recommended,
            style: AppStyles.regular14.copyWith(color: AppColors.textColor),
          ),
          const Gap(20),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const HomeRecommended();
              },
            ),
          ),
        ],
      ),
    );
  }
}
