import 'package:flutter/material.dart';
import 'package:hotel_booking/src/routes/routes_name.dart';

import '../routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      initialRoute: RoutesName.hotelScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
