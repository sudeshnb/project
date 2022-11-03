import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //This is used to support any kind of Device Orientation
  await SystemChrome.setPreferredOrientations(DeviceOrientation.values);

  runApp(const MyApp());
}
