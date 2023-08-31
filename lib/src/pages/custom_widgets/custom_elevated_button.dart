import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/font_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(343, 50),
        backgroundColor: AppColors.oD72FF,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyle.f16w500,
      ),
    );
  }
}
