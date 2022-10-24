import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getLightStyle({
  double fontSize = FontSizesManager.defaultTextSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstantsManager.fontFamily,
    FontWeightsManager.light,
    color,
  );
}

TextStyle getRegularStyle({
  double fontSize = FontSizesManager.defaultTextSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstantsManager.fontFamily,
    FontWeightsManager.regular,
    color,
  );
}

TextStyle getMediumStyle({
  double fontSize = FontSizesManager.defaultTextSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstantsManager.fontFamily,
    FontWeightsManager.medium,
    color,
  );
}

TextStyle getSemiBoldStyle({
  double fontSize = FontSizesManager.defaultTextSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstantsManager.fontFamily,
    FontWeightsManager.semiBold,
    color,
  );
}

TextStyle getBoldStyle({
  double fontSize = FontSizesManager.defaultTextSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstantsManager.fontFamily,
    FontWeightsManager.bold,
    color,
  );
}
