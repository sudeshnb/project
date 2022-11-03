import 'package:flutter/material.dart';

import 'configs/configs.dart';

localImg({required String imgPath}) => Image.asset(
      imgPath,
      errorBuilder: (context, error, stackTrace) => Text(
        "couldn't load this image 😢",
        style: TextStyles.h3,
      ),
    );
