import 'package:course_learning/core/routing.dart';
import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/onboarding/data/models/course_list.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/course_selection_item.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/selection_title.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/user_choice_button.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class UserChoiceViewBody extends StatefulWidget {
  const UserChoiceViewBody({super.key});

  @override
  State<UserChoiceViewBody> createState() => _UserChoiceViewBodyState();
}

class _UserChoiceViewBodyState extends State<UserChoiceViewBody> {
  Set<int> selectedIndices = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SelectionTitle(),
        const Gap(30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: List.generate(
                CourseList.courses.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: CourseSelectionItem(
                    onTap: () {
                      setState(() {
                        if (selectedIndices.contains(index)) {
                          selectedIndices.remove(index);
                        } else {
                          selectedIndices.add(index);
                        }
                      });
                    },
                    isSelected: selectedIndices.contains(index),
                    courseName: CourseList.courses[index],
                  ),
                ),
              ),
            ),
          ),
        ),
        const Gap(20),
        UserChoiceButton(
          onPressed: () {
            if (selectedIndices.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.snackBarWarningColor,
                  content: Text(
                    S.of(context).selectCourse,
                    style: AppStyles.regular18.copyWith(
                      color: AppColors.textColor,
                    ),
                  ),
                ),
              );
              return;
            } else {
              GoRouter.of(context).pushReplacement(AppRouter.kHome);
            }
          },
        ),
      ],
    );
  }
}
