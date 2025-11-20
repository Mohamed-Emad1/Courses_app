import 'package:course_learning/features/onboarding/presentation/views/widgets/user_choice_view_body.dart';
import 'package:flutter/material.dart';

class UserChoiceView extends StatelessWidget {
  const UserChoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: UserChoiceViewBody()));
  }
}
