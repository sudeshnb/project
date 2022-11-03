import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  // Screen sizes
  //
  // This is Mobile Screen
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  //
  // This is Tablet Screen
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 600;
  //
  // This is Desktop Screen
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
  //
  // Check the Screen oriantation
  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    if (width >= 1000) {
      return desktop;
    } else if (width >= 600) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
