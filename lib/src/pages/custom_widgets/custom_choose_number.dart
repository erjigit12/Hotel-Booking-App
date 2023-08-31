import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/font_style.dart';
import 'custom_container.dart';
import 'custom_elevated_button.dart';
import 'custom_image_container.dart';

class CustomChooseNumber extends StatelessWidget {
  const CustomChooseNumber({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.price,
    required this.day,
    this.onPressed,
  });

  final double width;
  final double height;
  final String image;
  final String title;
  final String price;
  final String day;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageContainer(
              width: width,
              height: height,
              image: image,
            ),
            SizedBox(height: height * .01),
            Text(
              title,
              style: AppTextStyle.f24w500,
            ),
            SizedBox(height: height * .01),
            Row(
              children: [
                const CustomContainer(
                  width: 125,
                  height: 30,
                  text: 'Все включено',
                ),
                SizedBox(width: width * .01),
                const CustomContainer(
                  width: 125,
                  height: 30,
                  text: 'Кондиционер',
                ),
              ],
            ),
            SizedBox(height: height * .01),
            Container(
              width: 195,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.oD72FF.withOpacity(0.1),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Подробнее о номере',
                      style: AppTextStyle.f16w500cBlue,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: AppColors.oD72FF,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * .02),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(price, style: AppTextStyle.f32w600),
                SizedBox(width: width * .03),
                Text(
                  day,
                  style: AppTextStyle.f16w400cGrey,
                ),
              ],
            ),
            SizedBox(height: height * .02),
            Center(
              child: CustomElevatedButton(
                onPressed: onPressed,
                text: 'Выбрать номер',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
