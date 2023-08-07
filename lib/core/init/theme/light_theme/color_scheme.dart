import 'package:flutter/material.dart';

class ColorScheme {

  ColorScheme._init();
  static ColorScheme? _instance;
  static ColorScheme? get instance {
    _instance ??= ColorScheme._init();
    return _instance;
  }

  final Color brown = const Color(0xffa87e6f);
  final Color red = const Color(0xffc10e0e);
  final Color white = const Color(0xffffffff);
  final Color gray = const Color(0xffa5a6ae);
  final Color lightGray = const Color(0xfff7f7f7);
  final Color darkGray = const Color(0xff676870);
  final Color black = const Color(0xff020306);

  final Color azure = const Color(0xff27928d);
}