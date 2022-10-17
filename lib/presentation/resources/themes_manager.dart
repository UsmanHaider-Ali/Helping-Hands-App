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

    //button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorsManager.primary,
      splashColor: ColorsManager.primmaryColorOpecity70,
      disabledColor: ColorsManager.grey1,
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorsManager.white,
        ),
        // primary: ColorsManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizesManager.s8,
          ),
        ),
      ),
    ),

    //text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
        color: ColorsManager.darkGrey,
        fontSize: FontsSizeManager.s16,
      ),
      subtitle1: getMediumStyle(
        color: ColorsManager.lightGrey,
        fontSize: FontsSizeManager.s14,
      ),
      caption: getRegularStyle(
        color: ColorsManager.grey1,
      ),
      bodyText1: getRegularStyle(
        color: ColorsManager.grey,
      ),
    ),

    //input theme/text field
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(
        PaddingsManager.p8,
      ),
      hintStyle: getRegularStyle(
        color: ColorsManager.grey1,
      ),
      labelStyle: getRegularStyle(
        color: ColorsManager.darkGrey,
      ),
      errorStyle: getRegularStyle(
        color: ColorsManager.error,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.grey,
          width: SizesManager.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(SizesManager.s8),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.primary,
          width: SizesManager.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizesManager.s8,
          ),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.error,
          width: SizesManager.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizesManager.s8,
          ),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.primary,
          width: SizesManager.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizesManager.s8,
          ),
        ),
      ),
    ),
  );
}
