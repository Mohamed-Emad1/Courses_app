import 'package:course_learning/core/utils/styles.dart';
import 'package:flutter/material.dart';

void buildSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(message, style: AppStyles.regular14)));
}
