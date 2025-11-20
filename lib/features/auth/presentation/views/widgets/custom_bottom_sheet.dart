import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.sheetChild});

  final Widget sheetChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Added height to make the container visible
      decoration: const BoxDecoration(
        color: Color(0xffFDFDFD),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
        ],
      ),
      child: sheetChild,
    );
  }
}
