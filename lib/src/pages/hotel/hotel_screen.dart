import 'package:flutter/material.dart';
import 'package:hotel_booking/src/constants/colors.dart';
import 'package:hotel_booking/src/constants/font_style.dart';
import 'package:hotel_booking/src/routes/routes_name.dart';
import '../custom_widgets/custom_container.dart';
import '../custom_widgets/custom_elevated_button.dart';
import '../custom_widgets/custom_image_container.dart';
import '../custom_widgets/custom_list_tile.dart';
import '../custom_widgets/custom_number_title.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Отель', style: AppTextStyle.f20w500),
        centerTitle: true,
        foregroundColor: AppColors.blackColor,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * .01),
                      CustomImageContainer(
                        image: 'assets/images/image1.png',
                        width: width,
                        height: height,
                      ),
                      SizedBox(height: height * .02),
                      CustomNumberTitle(width: width, height: height),
                      SizedBox(height: height * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'От 134 673 ₽',
                            style: AppTextStyle.f32w600,
                          ),
                          SizedBox(width: width * .03),
                          const Text(
                            'За тур с перелетом',
                            style: AppTextStyle.f16w400cGrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * .015),
              Container(
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Об отеле', style: AppTextStyle.f22w500),
                      SizedBox(height: height * .02),
                      Row(
                        children: [
                          const CustomContainer(
                            text: '3-я линия',
                            width: 95,
                            height: 30,
                          ),
                          SizedBox(width: width * .04),
                          const CustomContainer(
                            text: 'Платный Wi-Fi в фойе',
                            width: 180,
                            height: 30,
                          ),
                        ],
                      ),
                      SizedBox(height: height * .01),
                      Row(
                        children: [
                          const CustomContainer(
                            text: '30 км до аэропорта',
                            width: 165,
                            height: 30,
                          ),
                          SizedBox(width: width * .04),
                          const CustomContainer(
                            text: '1 км до пляжа',
                            width: 122,
                            height: 30,
                          ),
                        ],
                      ),
                      SizedBox(height: height * .02),
                      const Text(
                        'Отель VIP-класса с собственными гольф полями. Высокий уровнь,'
                        'сервиса. Рекомендуем для респектабельного отдыха. Отель принимает'
                        'гостей от 18 лет!',
                        style: AppTextStyle.f16w400,
                      ),
                      SizedBox(height: height * .02),
                      Container(
                        width: width,
                        height: 230,
                        decoration: BoxDecoration(
                          color: AppColors.fBFBFC,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                          children: [
                            CustomListTile(
                              leading: 'assets/svg/em-happy.svg',
                              title: 'Удобства',
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20, left: 50),
                              child: Divider(
                                height: 1,
                                thickness: 1,
                              ),
                            ),
                            CustomListTile(
                              leading: 'assets/svg/checked.svg',
                              title: 'Что включено',
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20, left: 50),
                              child: Divider(
                                height: 1,
                                thickness: 1,
                              ),
                            ),
                            CustomListTile(
                              leading: 'assets/svg/close.svg',
                              title: 'Что не включено',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * .015),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 90,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.1,
              color: AppColors.blackColor,
            ),
          ),
          color: AppColors.whiteColor,
        ),
        child: Center(
          child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.numberScreen);
            },
            text: 'К выбору номера',
          ),
        ),
      ),
    );
  }
}
