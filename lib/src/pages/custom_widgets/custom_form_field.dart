import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/font_style.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.controller,
    this.initialValue,
  });

  final String hintText;
  final String labelText;
  final TextEditingController? controller;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.backgroundColor,
        filled: true,
        labelText: hintText,
        labelStyle: AppTextStyle.f16w500cLabel,
        hintText: labelText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
