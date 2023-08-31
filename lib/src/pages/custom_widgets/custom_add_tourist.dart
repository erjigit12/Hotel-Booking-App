import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/font_style.dart';

class CustomAddTourist extends StatelessWidget {
  const CustomAddTourist({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Добавить туриста',
              style: AppTextStyle.f22w500,
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.oD72FF,
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
