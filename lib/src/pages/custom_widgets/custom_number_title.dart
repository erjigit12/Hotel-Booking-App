import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/font_style.dart';

class CustomNumberTitle extends StatelessWidget {
  const CustomNumberTitle({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width * 0.40,
          height: height * .035,
          decoration: BoxDecoration(
            color: AppColors.fFC700.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 16,
                color: AppColors.fFC700,
              ),
              Text(
                '5 Превосходно',
                style: AppTextStyle.f16w500cYellow,
              ),
            ],
          ),
        ),
        SizedBox(height: height * .01),
        const Text(
          'Steigenberger Makadi',
          style: AppTextStyle.f23w600,
        ),
        SizedBox(height: height * .01),
        const Text(
          'Madinat, Makadi, Safaga Road, Makadi Bay, Египет',
          style: AppTextStyle.f15w400cBlue,
        ),
      ],
    );
  }
}
