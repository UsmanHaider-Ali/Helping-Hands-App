import 'package:flutter/material.dart';
import '/presentation/resources/fonts_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getLightStyle({
  double fontSize = FontsSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsConstantsManager.fontFamily,
      FontsWeightManager.light, color);
}

TextStyle getRegularStyle({
  double fontSize = FontsSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsConstantsManager.fontFamily,
      FontsWeightManager.regular, color);
}

TextStyle getMediumStyle({
  double fontSize = FontsSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsConstantsManager.fontFamily,
      FontsWeightManager.medium, color);
}

TextStyle getSemiBoldStyle({
  double fontSize = FontsSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsConstantsManager.fontFamily,
      FontsWeightManager.semiBold, color);
}

TextStyle getBoldStyle({
  double fontSize = FontsSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsConstantsManager.fontFamily,
      FontsWeightManager.bold, color);
}
