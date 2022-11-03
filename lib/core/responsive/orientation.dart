import 'package:flutter/material.dart';

class OrientationWidget extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;

  const OrientationWidget({
    Key? key,
    required this.portrait,
    required this.landscape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Check the orientation on the device's Orientation.portrait
    ///
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portrait;
    } else {
      return landscape;
    }
  }
}
