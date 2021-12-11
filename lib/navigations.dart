import 'package:flutter/material.dart';

import 'pages/cart/cart.dart';
import 'pages/percent/percent.dart';
import 'pages/home/home.dart';
import 'pages/product/product.dart';

class RoutersNames {
  static const home = '/';
  static const percent = '/percent';
  static const bookmark = '/bookmark';
  static const cart = '/cart';
  static const product = '/product';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case RoutersNames.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutersNames.percent:
        return MaterialPageRoute(builder: (_) => PercentPage());
      case RoutersNames.bookmark:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutersNames.cart:
        return MaterialPageRoute(builder: (_) => CartPage());
      case RoutersNames.product:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ProductPage(
              product_id: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
