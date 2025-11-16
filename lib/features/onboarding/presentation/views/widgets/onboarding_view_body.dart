import 'package:course_learning/features/onboarding/presentation/views/widgets/first_page.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/second_page.dart';
import 'package:course_learning/features/onboarding/presentation/views/widgets/third_page.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        FirstPage(controller: _pageController),
        SecondPage(controller: _pageController),
        ThirdPage(controller: _pageController),
      ],
    );
  }
}
