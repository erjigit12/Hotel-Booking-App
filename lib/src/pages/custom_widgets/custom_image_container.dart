import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
    required this.width,
    required this.height,
    required this.image,
  });

  final double width;
  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
