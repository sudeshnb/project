import 'package:onyxsio/core/responsive/size.dart';
import 'package:flutter/material.dart';

class Fonts {
  static String get body => "Lato";
  static String get title => "Roboto";
}

class TextStyles {
  static FontWeight b = FontWeight.bold;
  static FontWeight l = FontWeight.w300;
  //
  static TextStyle get bodyFont => TextStyle(fontFamily: Fonts.body);
  static TextStyle get titleFont => TextStyle(fontFamily: Fonts.title);
  //
  static TextStyle get h1 => titleFont.copyWith(fontSize: 16.sp);
  static TextStyle get h1B => h1.copyWith(fontWeight: b);
  static TextStyle get h1L => h1.copyWith(fontWeight: l);
  //
  static TextStyle get h2 => titleFont.copyWith(fontSize: 14.sp);
  static TextStyle get h2B => h2.copyWith(fontWeight: b);
  static TextStyle get h2L => h2.copyWith(fontWeight: l);
  //
  static TextStyle get h3 => titleFont.copyWith(fontSize: 10.sp);
  static TextStyle get h3B => h3.copyWith(fontWeight: b);
  static TextStyle get h3L => h3.copyWith(fontWeight: l);
  //
  static TextStyle get b1 => bodyFont.copyWith(fontSize: 10.sp);
  static TextStyle get b1B => b1.copyWith(fontWeight: b);
  //
  static TextStyle get b2 => bodyFont.copyWith(fontSize: 8.sp);
  static TextStyle get b2B => b2.copyWith(fontWeight: b);
  //
  static TextStyle get btn => bodyFont.copyWith(fontSize: 12.sp);
  static TextStyle get btnB => btn.copyWith(fontWeight: b);
}
