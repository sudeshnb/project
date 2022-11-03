import 'package:onyxsio/app/Onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import '../core/configs/app.dart';
import '../core/configs/configs.dart';
import '../core/responsive/orientation.dart';

class WapperScreen extends StatefulWidget {
  const WapperScreen({Key? key}) : super(key: key);

  @override
  State<WapperScreen> createState() => _WapperScreenState();
}

class _WapperScreenState extends State<WapperScreen>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    return const OnboardPage();
    // return Scaffold(
    //   body: Center(
    //       child: OrientationWidget(
    //     portrait: Padding(
    //       padding: Space.all(),
    //       child: Column(
    //         children: [
    //           Text(
    //             'main Page portrait',
    //             style: TextStyles.h1B,
    //           ),
    //         ],
    //       ),
    //     ),
    //     landscape: Text('main Page landscape', style: TextStyles.h1),
    //   )),
    // );
  }
}
