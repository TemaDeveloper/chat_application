import 'package:flutter/material.dart';

abstract class AppTextStyles {

  static const _robotoFont = 'Roboto';
  static const _arialFont = 'Arial';

  static TextStyle get robotoTitle => TextStyle(
    fontFamily: _robotoFont,
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );

  static TextStyle get robotoBody => TextStyle(
    fontFamily: _robotoFont,
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );

  static TextStyle get arialBody => TextStyle(
    fontFamily: _arialFont,
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );

}