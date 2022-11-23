import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/resources/styles_manager.dart';
import 'colors_manager.dart';
import 'dimens_manager.dart';
import 'fonts_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors of the app
    primaryColor: ColorsManager.primaryColor,
    primaryColorLight: ColorsManager.primaryColor,
    // primaryColorDark: ColorsManager.darkGrey,
    // disabledColor: ColorsManager.lightGrey,

    // backgroundColor: ColorsManager.primaryColor,
    //screen/view background color
    scaffoldBackgroundColor: ColorsManager.screenColor,
    //ripple color
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,

    //will use for disabled button
    // accentColor: ColorsManager.grey,

    //cardTheme
    cardTheme: CardTheme(
      color: ColorsManager.whiteColor,
      // shadowColor: ColorsManager.grey,
      // elevation: SizesManager.s4,
    ),

    //appBarTheme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorsManager.statusBarColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: ColorsManager.screenColor,
      elevation: ValuesManager.appBarElevation,
      // shadowColor: ColorsManager.primaryColor,
      titleTextStyle: getMediumStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.appBarTextSize,
      ),
    ),

    //buttonTheme
    // buttonTheme: ButtonThemeData(
    // shape: StadiumBorder(),
    // buttonColor: ColorsManager.primaryColor,
    // splashColor: ColorsManager.primmaryColorOpecity70,
    // disabledColor: ColorsManager.grey1,
    // ),

    //textTheme
    textTheme: TextTheme(
      headlineMedium: getSemiBoldStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.headingTextSize,
      ),
      titleMedium: getMediumStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.titleTextSize,
      ),
      titleSmall: getMediumStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.bodySmallTextSize,
      ),
      labelLarge: getMediumStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.labelTextSize,
      ),
      labelMedium: getMediumStyle(
        color: ColorsManager.secondaryTextColor,
        fontSize: FontSizesManager.labelTextSize,
      ),
      labelSmall: getMediumStyle(
        color: ColorsManager.lightTextColor,
        fontSize: FontSizesManager.labelTextSize,
      ),
      bodyLarge: getRegularStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.bodyLargeTextSize,
      ),
      bodyMedium: getRegularStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.bodyMediumTextSize,
      ),
      bodySmall: getRegularStyle(
        color: ColorsManager.lightTextColor,
        fontSize: FontSizesManager.bodySmallTextSize,
      ),
    ),

    //elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getMediumStyle(
          color: ColorsManager.primaryTextColor,
          fontSize: FontSizesManager.titleTextSize,
        ),
        minimumSize: const Size.fromHeight(
          ValuesManager.filledButtonfromHeight,
        ),
        backgroundColor: ColorsManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            ValuesManager.defaultRadious,
          ),
        ),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorsManager.appBarColor,
    ),
    //inputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: PaddingsManager.inputFieldHorizontalPadding,
        vertical: PaddingsManager.inputFieldVerticalPadding,
      ),
      filled: true,
      fillColor: ColorsManager.whiteColor,
      hintStyle: getRegularStyle(
        color: ColorsManager.lightTextColor,
        fontSize: FontSizesManager.defaultTextSize,
      ),
      labelStyle: getRegularStyle(
        color: ColorsManager.primaryTextColor,
        fontSize: FontSizesManager.labelTextSize,
      ),
      errorStyle: getRegularStyle(
        color: ColorsManager.whiteColor,
        fontSize: FontSizesManager.inputLabelSize,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.whiteColor,
          width: ValuesManager.defaultRadious,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            ValuesManager.defaultRadious,
          ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.whiteColor,
          width: ValuesManager.inputFieldBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            ValuesManager.defaultRadious,
          ),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.whiteColor,
          width: ValuesManager.inputFieldBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            ValuesManager.defaultRadious,
          ),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.whiteColor,
          width: ValuesManager.inputFieldBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            ValuesManager.defaultRadious,
          ),
        ),
      ),
    ),
  );
}
