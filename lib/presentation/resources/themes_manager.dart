import 'package:flutter/material.dart';
import 'package:helping_hands_app/presentation/resources/fonts_manager.dart';
import 'package:helping_hands_app/presentation/resources/styles_manager.dart';
import 'package:helping_hands_app/presentation/resources/values_manager.dart';
import '/presentation/resources/colors_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors of the app
    primaryColor: ColorsManager.primary,
    primaryColorLight: ColorsManager.primary,
    primaryColorDark: ColorsManager.darkGrey,
    disabledColor: ColorsManager.lightGrey,

    // backgroundColor: ColorsManager.primary,
    //screen/view background color
    scaffoldBackgroundColor: ColorsManager.viewBackgroundColor,
    //ripple color
    splashColor: ColorsManager.primmaryColorOpecity70,

    //will use for disabled button
    // accentColor: ColorsManager.grey,

    //card view theme
    cardTheme: CardTheme(
      color: ColorsManager.white,
      shadowColor: ColorsManager.grey,
      elevation: SizesManager.s4,
    ),

    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorsManager.primary,
      elevation: SizesManager.s4,
      shadowColor: ColorsManager.grey,
      titleTextStyle: getRegularStyle(
        color: ColorsManager.white,
        fontSize: FontsSizeManager.s16,
      ),
    ),

    //buttonTheme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorsManager.primary,
      splashColor: ColorsManager.primmaryColorOpecity70,
      disabledColor: ColorsManager.grey1,
    ),

    //text theme
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 100,
      ),
      // displayMedium: getBoldStyle(
      //   color: ColorsManager.displayMediumColor,
      //   fontSize: FontsSizeManager.displayMediumTextSize,
      // ),
      // headlineMedium: getSemiBoldStyle(
      //   color: ColorsManager.headlineMediumColor,
      //   fontSize: FontsSizeManager.headlineMediumTextSize,
      // ),
      // titleMedium: getMediumStyle(
      //   color: ColorsManager.titleMediumColor,
      //   fontSize: FontsSizeManager.titleMediumTextSize,
      // ),

      // //label
      // labelLarge: getRegularStyle(
      //   color: ColorsManager.labelLargeColor,
      //   fontSize: FontsSizeManager.labelMediumTextSize,
      // ),
      // labelMedium: getRegularStyle(
      //   color: ColorsManager.labelMediumColor,
      //   fontSize: FontsSizeManager.labelMediumTextSize,
      // ),
      // labelSmall: getRegularStyle(
      //   color: ColorsManager.labelSmallColor,
      //   fontSize: FontsSizeManager.labelMediumTextSize,
      // ),

      // //body
      // bodyLarge: getLightStyle(
      //   color: ColorsManager.bodyLargeColor,
      //   fontSize: FontsSizeManager.bodyLargeTextSize,
      // ),
      // bodyMedium: getLightStyle(
      //   color: ColorsManager.bodyMediumColor,
      //   fontSize: FontsSizeManager.bodyMediumTextSize,
      // ),
      // bodySmall: getLightStyle(
      //   color: ColorsManager.bodySmallColor,
      //   fontSize: FontsSizeManager.bodySmallTextSize,
      // ),
    ),

    //elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getSemiBoldStyle(
          color: ColorsManager.filledButtonTextColor,
          fontSize: FontsSizeManager.filledButtonTextSize,
        ),
        minimumSize: const Size.fromHeight(
          SizesManager.filledButtonfromHeight,
        ),
        backgroundColor: ColorsManager.filledButtonBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizesManager.defaultRadious,
          ),
        ),
      ),
    ),

    //inputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        vertical: PaddingsManager.inputFieldVerticalPadding,
        horizontal: PaddingsManager.inputFieldHorizontalPadding,
      ),
      filled: true,
      fillColor: ColorsManager.inputFieldFillColor,
      hintStyle: getRegularStyle(
        color: ColorsManager.inputFieldHintColor,
        fontSize: FontsSizeManager.inputFieldHintSize,
      ),
      labelStyle: getRegularStyle(
        color: ColorsManager.inputFieldLabelColor,
        fontSize: FontsSizeManager.inputFieldLabelSize,
      ),
      errorStyle: getRegularStyle(
        color: ColorsManager.inputFieldErrroColor,
        fontSize: FontsSizeManager.inputFieldErrorSize,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.inputFieldBorderColor,
          width: SizesManager.defaultRadious,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            SizesManager.defaultRadious,
          ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.inputFieldBorderColor,
          width: SizesManager.inputFieldBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            SizesManager.defaultRadious,
          ),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.inputFieldErrroColor,
          width: SizesManager.inputFieldBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            SizesManager.defaultRadious,
          ),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.inputFieldErrroColor,
          width: SizesManager.inputFieldBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            SizesManager.defaultRadious,
          ),
        ),
      ),
    ),
  );
}
