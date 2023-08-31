import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/font_style.dart';
import 'custom_form_field.dart';

class CustomTouristData extends StatefulWidget {
  const CustomTouristData({
    super.key,
    required this.width,
    required this.height,
    required this.howMuchTourist,
  });

  final double width;
  final double height;
  final String howMuchTourist;

  @override
  State<CustomTouristData> createState() => _CustomTouristDataState();
}

class _CustomTouristDataState extends State<CustomTouristData> {
  bool customIcon = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.whiteColor,
      ),
      child: ExpansionTile(
        trailing: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.oD72FF.withOpacity(0.1),
          ),
          child: Center(
            child: Icon(
              customIcon ? Icons.expand_less : Icons.expand_more,
              color: AppColors.oD72FF,
            ),
          ),
        ),
        onExpansionChanged: (bool expanded) {
          setState(() => customIcon = expanded);
        },
        textColor: AppColors.blackColor,
        iconColor: AppColors.oD72FF,
        title: Text(
          widget.howMuchTourist,
          style: AppTextStyle.f22w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const CustomFormField(
                  hintText: 'Имя',
                  labelText: 'Имя',
                ),
                SizedBox(height: widget.height * .01),
                const CustomFormField(
                  hintText: 'Фамилия',
                  labelText: 'Фамилия',
                ),
                SizedBox(height: widget.height * .01),
                const CustomFormField(
                  hintText: 'Дата рождения',
                  labelText: 'Дата рождения',
                ),
                SizedBox(height: widget.height * .01),
                const CustomFormField(
                  hintText: 'Гражданство',
                  labelText: 'Гражданство',
                ),
                SizedBox(height: widget.height * .01),
                const CustomFormField(
                  hintText: 'Номер загранпаспорта',
                  labelText: 'Номер загранпаспорта',
                ),
                SizedBox(height: widget.height * .01),
                const CustomFormField(
                  hintText: 'Срок действия загранпаспорта',
                  labelText: 'Срок действия загранпаспорта',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
