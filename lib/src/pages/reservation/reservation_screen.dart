// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hotel_booking/src/constants/font_style.dart';
import 'package:hotel_booking/src/pages/custom_widgets/custom_elevated_button.dart';
import 'package:hotel_booking/src/pages/custom_widgets/custom_number_title.dart';
import 'package:hotel_booking/src/routes/routes_name.dart';
import '../../constants/colors.dart';
import '../custom_widgets/custom_add_tourist.dart';
import '../custom_widgets/custom_data_container.dart';
import '../custom_widgets/custom_final_payment.dart';
import '../custom_widgets/custom_form_field.dart';
import '../custom_widgets/custom_tourist_data.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
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
        title: const Text('Бронирование'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * .01),
            Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomNumberTitle(
                  width: width,
                  height: height,
                ),
              ),
            ),
            SizedBox(height: height * .01),
            Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const CustomDataContainer(
                      keyData: 'Вылет из',
                      valueData: 'Санкт-Петербург',
                      right: 105,
                    ),
                    SizedBox(height: height * .015),
                    const CustomDataContainer(
                      keyData: 'Страна, город',
                      valueData: 'Египет, Хургада',
                      right: 110,
                    ),
                    SizedBox(height: height * .015),
                    const CustomDataContainer(
                      keyData: 'Даты',
                      valueData: '19.09.2023 – 27.09.2023',
                      right: 48,
                    ),
                    SizedBox(height: height * .015),
                    const CustomDataContainer(
                      keyData: 'Кол-во ночей',
                      valueData: '7 ночей',
                      right: 170,
                    ),
                    SizedBox(height: height * .015),
                    const CustomDataContainer(
                      keyData: 'Отель',
                      valueData: 'Steigenberger Makadi',
                      right: 70,
                    ),
                    SizedBox(height: height * .015),
                    const CustomDataContainer(
                      keyData: 'Номер',
                      valueData: 'Стандартный с видом на\n бассейн или сад',
                      right: 40,
                    ),
                    SizedBox(height: height * .015),
                    const CustomDataContainer(
                      keyData: 'Питание',
                      valueData: 'Все включено',
                      right: 120,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * .01),
            Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Информация о покупателе',
                      style: AppTextStyle.f22w500,
                    ),
                    SizedBox(height: height * .015),
                    const CustomFormField(
                      initialValue: '+7 (951) 555-99-00',
                      hintText: 'Номер телефона',
                      labelText: 'Номер телефона',
                    ),
                    SizedBox(height: height * .01),
                    const CustomFormField(
                      initialValue: 'examplemail.000@mail.ru',
                      hintText: 'Почта',
                      labelText: 'Почта',
                    ),
                    SizedBox(height: height * .01),
                    const Text(
                      'Эти данные никому не передаются.'
                      'После оплаты мы вышли чек на указанный вами номер и почту',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: AppColors.f28796,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * .01),
            CustomTouristData(
              width: width,
              height: height,
              howMuchTourist: 'Первый турист',
            ),
            SizedBox(height: height * .01),
            CustomTouristData(
              width: width,
              height: height,
              howMuchTourist: 'Второй турист',
            ),
            SizedBox(height: height * .01),
            CustomAddTourist(width: width),
            SizedBox(height: height * .01),
            Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const CustomFinalPayment(
                      name: 'Тур',
                      price: '186 600 ₽',
                    ),
                    SizedBox(height: height * .015),
                    const CustomFinalPayment(
                      name: 'Топливный сбор',
                      price: '9 300 ₽',
                    ),
                    SizedBox(height: height * .015),
                    const CustomFinalPayment(
                      name: 'Сервисный сбор',
                      price: '2 136 ₽',
                    ),
                    SizedBox(height: height * .015),
                    const CustomFinalPayment(
                      name: 'К оплате',
                      price: '198 036 ₽',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * .01),
          ],
        ),
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
            text: 'Оплатить 198 036 ₽',
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.paidScreen);
            },
          ),
        ),
      ),
    );
  }
}
