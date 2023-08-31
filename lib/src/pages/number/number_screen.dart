import 'package:flutter/material.dart';
import 'package:hotel_booking/src/constants/colors.dart';
import 'package:hotel_booking/src/routes/routes_name.dart';
import '../custom_widgets/custom_choose_number.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
        title: const Text('Steigenberger Makadi'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: height * .01),
            CustomChooseNumber(
              width: width,
              height: height,
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.reservationScreen);
              },
              image: 'assets/images/image2.png',
              title: 'Стандартный с видом на бассейн или сад',
              price: '186 600 ₽',
              day: 'за 7 ночей с перелётом',
            ),
            SizedBox(height: height * .01),
            CustomChooseNumber(
              width: width,
              height: height,
              image: 'assets/images/image1.png',
              title: 'Комфорт с видом на бассейн',
              price: '190 500 ₽',
              day: 'за 10 ночей с перелётом',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 30,
        color: AppColors.whiteColor,
      ),
    );
  }
}
