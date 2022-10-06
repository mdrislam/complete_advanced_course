import 'package:flutter/material.dart';

class Colormanager {
  static Color primary = HaxColor.fromHex('#ED9728');
  static Color darkGrey = HaxColor.fromHex('#525252');
  static Color grey = HaxColor.fromHex('#737477');
  static Color lightGrey = HaxColor.fromHex('#9E9E9E');
  static Color primaryOpacity70 = HaxColor.fromHex('#B3ED9728');
}

extension HaxColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
