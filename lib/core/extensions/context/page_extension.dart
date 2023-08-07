import 'package:flutter/material.dart';
import 'dart:math';

extension PageExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}