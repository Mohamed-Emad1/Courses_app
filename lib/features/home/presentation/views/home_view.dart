import 'package:course_learning/features/home/presentation/views/widgets/custom_button_navigation.dart';
import 'package:course_learning/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [
    const HomeViewBody(),
    const HomeViewBody(),
    const HomeViewBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: currentIndex, children: screens),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onIndexChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
