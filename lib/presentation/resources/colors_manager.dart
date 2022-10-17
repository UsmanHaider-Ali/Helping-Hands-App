import 'package:flutter/material.dart';

class ColorsManager {
  static Color primary = HexColor.fromHex("#FF3D00");
  static Color darkGrey = HexColor.fromHex('#001E08');
  static Color grey = HexColor.fromHex('#707070');
  static Color lightGrey = HexColor.fromHex('#A2A2A2');
  static Color primmaryColorOpecity70 = HexColor.fromHex('#A2A2A2');
  static Color viewBackgroundColor = HexColor.fromHex('#F7F7F7');

  static Color white = HexColor.fromHex('#FFFFFF');
  static Color darkPrimmary = HexColor.fromHex('#FFFFFF');
  static Color grey1 = HexColor.fromHex('#707070');
  static Color grey2 = HexColor.fromHex('#797979');
  static Color error = HexColor.fromHex('#e61f34');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
