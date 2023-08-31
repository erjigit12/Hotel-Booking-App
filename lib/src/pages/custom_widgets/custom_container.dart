import 'package:flutter/material.dart';
import 'package:hotel_booking/src/constants/font_style.dart';

import '../../constants/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.text,
  });
  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.fBFBFC,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(text, style: AppTextStyle.f16w500cGrey),
      ),
    );
  }
}
