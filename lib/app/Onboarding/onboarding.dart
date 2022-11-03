import 'package:onyxsio/changes/strings.dart';
import 'package:onyxsio/core/configs/configs.dart';
import 'package:onyxsio/core/constants.dart';
import 'package:onyxsio/core/utils/utils.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          localImg(imgPath: AppImage.logo),
          Text(
            onboardTagline,
            style: TextStyles.h3,
          ),
        ],
      ),
    );
  }
}
