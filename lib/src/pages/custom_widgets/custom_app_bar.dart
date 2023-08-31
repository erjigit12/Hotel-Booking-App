import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      foregroundColor: AppColors.blackColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      centerTitle: true,
      title: const Text('Steigenberger Makadi'),
    );
  }
}
