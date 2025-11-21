import 'package:course_learning/core/utils/colors.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.onSaved,
    this.isPhone = false,
  });

  final String hintText;
  final bool obscureText;
  final void Function(String?)? onSaved;
  final bool? isPhone;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).required_field;
        }
        return null;
      },
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      keyboardType: widget.isPhone ?? false ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : null,
        hintText: widget.hintText,
        hintStyle: AppStyles.regular14.copyWith(color: AppColors.textColor),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
    );
  }
}
