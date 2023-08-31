import 'package:flutter/material.dart';
import 'package:hotel_booking/src/constants/font_style.dart';

import '../../constants/colors.dart';
import '../../routes/routes_name.dart';
import '../custom_widgets/custom_elevated_button.dart';

class PaidScreen extends StatelessWidget {
  const PaidScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
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
        title: const Text('Заказ оплачен'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundColor,
              ),
              child: const Center(
                child: Image(
                  image: AssetImage('assets/images/order-paid.png'),
                ),
              ),
            ),
          ),
          SizedBox(height: height * .02),
          const Text(
            'Ваш заказ принят в работу',
            style: AppTextStyle.f22w500,
          ),
          SizedBox(height: height * .01),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'Подтверждение заказа №104893 может занять некоторое время'
                '(от 1 часа до суток). Как только мы получим ответ от'
                'туроператора, вам на почту'
                'придет уведомление.',
                textAlign: TextAlign.center,
                style: AppTextStyle.f16w400cGrey,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: width,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.1,
              color: AppColors.blackColor,
            ),
          ),
          color: AppColors.whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomElevatedButton(
            text: 'Супер!',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RoutesName.hotelScreen, (route) => false);
            },
          ),
        ),
      ),
    );
  }
}
