import 'package:flutter/material.dart';
import 'configs.dart';

class App {
  static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
  }
}
