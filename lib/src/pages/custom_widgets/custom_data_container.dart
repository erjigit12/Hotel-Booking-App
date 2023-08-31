import 'package:flutter/material.dart';

import '../../constants/font_style.dart';

class CustomDataContainer extends StatelessWidget {
  const CustomDataContainer({
    super.key,
    required this.keyData,
    required this.valueData,
    required this.right,
  });

  final String keyData;
  final String valueData;
  final double right;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(keyData, style: AppTextStyle.f16w400cGrey),
          Text(
            valueData,
            style: AppTextStyle.f16w400,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
