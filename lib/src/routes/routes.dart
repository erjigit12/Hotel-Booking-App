import 'package:flutter/material.dart';
import 'package:hotel_booking/src/pages/hotel/hotel_screen.dart';
import 'package:hotel_booking/src/pages/number/number_screen.dart';
import 'package:hotel_booking/src/pages/paid/paid_screen.dart';
import 'package:hotel_booking/src/pages/reservation/reservation_screen.dart';
import 'package:hotel_booking/src/routes/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.hotelScreen:
        return MaterialPageRoute(builder: (_) => const HotelScreen());
      case RoutesName.numberScreen:
        return MaterialPageRoute(builder: (_) => const NumberScreen());
      case RoutesName.reservationScreen:
        return MaterialPageRoute(builder: (_) => const ReservationScreen());
      case RoutesName.paidScreen:
        return MaterialPageRoute(builder: (_) => const PaidScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
