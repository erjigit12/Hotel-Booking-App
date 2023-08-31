import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/font_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leading,
    required this.title,
  });

  final String leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      leading: SvgPicture.asset(
        leading,
        height: 35,
      ),
      title: Text(
        title,
        style: AppTextStyle.f16w500cKuron,
      ),
      subtitle: const Text(
        'Самое необходимое',
        style: AppTextStyle.f14w500cGrey,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
