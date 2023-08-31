import 'package:flutter/material.dart';

import '../../constants/font_style.dart';

class CustomFinalPayment extends StatelessWidget {
  const CustomFinalPayment({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: AppTextStyle.f16w400cGrey),
        Text(price, style: AppTextStyle.f16w500),
      ],
    );
  }
}
