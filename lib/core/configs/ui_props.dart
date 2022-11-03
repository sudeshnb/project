import 'package:flutter/material.dart';

abstract class UIProps {
  // Animations
  static Duration duration = const Duration(milliseconds: 280);
  static Duration duration2 = const Duration(milliseconds: 400);

  // Paddings
  static EdgeInsets? btnPadMed;
  static EdgeInsets? btnPadSm;

  // Radius
  static double radius = 6.0;
  static BorderRadius? tabRadius;
  static BorderRadius? buttonRadius;
  static BorderRadius? cardRadius;
  static BoxDecoration? borderButton;

  // Shadows
  static List<BoxShadow>? cardShadow;

  // BoxDecoration
  static BoxDecoration? boxCard;

  // static init(BuildContext context) {
  // initRadius();
  // initButtons(context);
  // initShadows(context);
  // initBoxDecorations(context);
  // }

  // static initRadius() {
  //   tabRadius = BorderRadius.circular(radius * 2);
  //   buttonRadius = BorderRadius.circular(radius);
  //   cardRadius = BorderRadius.circular(radius * 2);
  // }

  // static initButtons(BuildContext context) {
  //   var theme = Theme.of(context);
  //   borderButton = BoxDecoration(
  //     borderRadius: UIProps.buttonRadius,
  //     border: Border.all(
  //       width: 1.4,
  //       color: theme.primaryColor,
  //     ),
  //   );
  //   btnPadSm = EdgeInsets.symmetric(
  //     horizontal: AppDimensions.padding! * 2,
  //     vertical: AppDimensions.padding! * 1.0,
  //   );
  //   btnPadMed = EdgeInsets.symmetric(
  //     horizontal: AppDimensions.padding! * 3,
  //     vertical: AppDimensions.padding! * 1.5,
  //   );
  // }

  // static initShadows(BuildContext context) {
  //   var theme = Theme.of(context);
  //   cardShadow = [
  //     BoxShadow(
  //       color: theme.shadowSub,
  //       blurRadius: 6,
  //     ),
  //   ];
  // }

  // static initBoxDecorations(BuildContext context) {
  //   var theme = Theme.of(context);
  //   boxCard = BoxDecoration(
  //     borderRadius: cardRadius,
  //     boxShadow: cardShadow,
  //     color: theme.backgroundColor,
  //   );
  // }
}
