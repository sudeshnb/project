import 'package:onyxsio/core/responsive/size.dart';
import 'package:flutter/material.dart';
import 'ui.dart';
import 'app_dimensions.dart';

class Space {
  static Widget get x => SizedBox(width: AppDimensions.space(0.5));
  static Widget get y => SizedBox(height: AppDimensions.space(0.5));
  //
  static Widget get x1 => SizedBox(width: AppDimensions.space());
  static Widget get y1 => SizedBox(height: AppDimensions.space());
  //
  static Widget get x2 => SizedBox(width: AppDimensions.space(2));
  static Widget get y2 => SizedBox(height: AppDimensions.space(2));
  //
  static Widget get top => SizedBox(height: UI.padding!.top);
  static Widget get bottom => SizedBox(height: UI.padding!.bottom);
  //
  static Widget get xm =>
      const Expanded(child: SizedBox(width: double.infinity));
  static Widget get ym =>
      const Expanded(child: SizedBox(height: double.infinity));
  //

  static get h => EdgeInsets.symmetric(horizontal: AppDimensions.space(0.5));
  static get v => EdgeInsets.symmetric(vertical: AppDimensions.space(0.5));
  static get h1 => EdgeInsets.symmetric(horizontal: AppDimensions.space());
  static get v1 => EdgeInsets.symmetric(vertical: AppDimensions.space());
  static get h2 => EdgeInsets.symmetric(horizontal: AppDimensions.space(2));
  static get v2 => EdgeInsets.symmetric(vertical: AppDimensions.space(2));
  static EdgeInsets get z => EdgeInsets.zero;

  static get hv => EdgeInsets.symmetric(
        vertical: AppDimensions.space(0.5),
        horizontal: AppDimensions.space(0.5),
      );
  static get hv1 => EdgeInsets.symmetric(
        vertical: AppDimensions.space(),
        horizontal: AppDimensions.space(),
      );
  static get hv3 => EdgeInsets.symmetric(
        vertical: AppDimensions.space(2),
        horizontal: AppDimensions.space(2),
      );

  //

  static Widget xf(double no) => SizedBox(width: AppDimensions.space(no));
  static Widget yf(double no) => SizedBox(height: AppDimensions.space(no));
  //
  static EdgeInsets t([double? no]) => EdgeInsets.only(top: no ?? 0.5.h);
  static EdgeInsets b([double? no]) => EdgeInsets.only(bottom: no ?? 0.5.h);
  static EdgeInsets l([double? no]) => EdgeInsets.only(left: no ?? 0.5.w);
  static EdgeInsets r([double? no]) => EdgeInsets.only(right: no ?? 0.5.w);

  static EdgeInsets hf(double no) => EdgeInsets.symmetric(
        horizontal: AppDimensions.space(no),
      );
  static EdgeInsets vf(double no) => EdgeInsets.symmetric(
        vertical: AppDimensions.space(no),
      );

  static EdgeInsets all([double h = 0.5, double? v]) => EdgeInsets.symmetric(
        vertical: AppDimensions.space(v ?? h),
        horizontal: AppDimensions.space(h),
      );
}
