import 'package:flutter/material.dart';

class ColorsManager {
  static Color primaryColor = HexColor.fromHex("#FF3D00");

  static Color primaryTextColor = HexColor.fromHex("#001E08");
  static Color secondaryTextColor = HexColor.fromHex("#FF3D00");
  static Color lightTextColor = HexColor.fromHex("#A2A2A2");

  static Color whiteColor = HexColor.fromHex('#FFFFFF');
  static Color errorColor = HexColor.fromHex('#e61f34');

  static Color screenColor = HexColor.fromHex('#F7F7F7');
  static Color statusBarColor = HexColor.fromHex('#F7F7F7');
  static Color appBarColor = HexColor.fromHex('#F7F7F7');
  static Color bottomSheetColor = HexColor.fromHex('#F7F7F7');
}

extension HexColor on Color {
  static Color fromHex(
    String hexColorString,
  ) {
    hexColorString = hexColorString.replaceAll(
      '#',
      '',
    );

    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(
      hexColorString,
      radix: 16,
    ));
  }
}
