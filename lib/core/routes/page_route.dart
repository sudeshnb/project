import 'package:flutter/material.dart';

import '../connection/network_check.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings? settings) {
    // final arguments = settings?.arguments;
    switch (settings?.name) {
      case '/':
        return createRoute(child: const NChecking());

      // case '/FollowerPage':
      //   List followList = arguments as List;
      //   return createRoute(child: FollowerList(followList: followList));

      default:
        // If there is no such named route in the switch statement
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

Route createRoute({required Widget child}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

  // routes: {"/": (context) => const NChecking()},