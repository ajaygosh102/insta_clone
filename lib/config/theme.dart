import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;
}

class AppColors {
  static const red = Color(0xFFDB3022);
  static const black = Color(0xFF222222);
  static const lightGray = Color(0xFF9B9B9B);
  static const darkGray = Color(0xFF979797);
  static const white = Color(0xFFFFFFFF);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFE5E5E5);
  static const purpleShadow = Color(0xFFEFF0FB);
}

class AppStrings {
  static const errorMsg = 'Something went wrong, please try again later';
 }

///Material Design typography
/*NAME         SIZE  WEIGHT  SPACING
headline1    96.0  light   -1.5
headline2    60.0  light   -0.5
headline3    48.0  regular  0.0
headline4    34.0  regular  0.25
headline5    24.0  regular  0.0
headline6    20.0  medium   0.15
subtitle1    16.0  regular  0.15
subtitle2    14.0  medium   0.1
body1        16.0  regular  0.5   (bodyText1)
body2        14.0  regular  0.25  (bodyText2)
button       14.0  medium   1.25
caption      12.0  regular  0.4
overLine     10.0  regular  1.5*/

// Ref: Font Weights: https://api.flutter.dev/flutter/dart-ui/FontWeight-class.html
// Ref: Font Weights for TextTheme: https://api.flutter.dev/flutter/material/TextTheme-class.html
class AppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: AppColors.black,
      primaryColorLight: AppColors.lightGray,
      accentColor: AppColors.red,
      bottomAppBarColor: AppColors.darkGray,
      backgroundColor: AppColors.background,
      dialogBackgroundColor: AppColors.background,
      errorColor: AppColors.red,
      dividerColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: theme.appBarTheme.copyWith(
          color: AppColors.black,
          iconTheme: IconThemeData(color: AppColors.black),
          textTheme: theme.textTheme.copyWith(
              caption: GoogleFonts.roboto(
                  color: AppColors.black,
                  fontSize: 18,
                  //fontWeight: FontWeight.w400
              ))),
      textTheme: theme.textTheme
          .copyWith(
            //headline5
            headline5: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 24,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal),
            //headline6
            headline6: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 0.15,
                fontWeight: FontWeight.w500),
            //subtitle1
            subtitle1: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 16,
                letterSpacing: 0.15,
                fontWeight: FontWeight.w500),
            //subtitle2
            subtitle2: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 14,
                letterSpacing: 0.1,
                fontWeight: FontWeight.w500),

            //body 1
            bodyText1: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 16,
                letterSpacing: 0.5,
                fontWeight: FontWeight.normal),
            //body 2
            bodyText2: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 14,
                letterSpacing: 0.25,
                fontWeight: FontWeight.normal),
            //button
            button: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 14,
                letterSpacing: 1.25,
                fontWeight: FontWeight.w500),
          )
          .apply(fontFamily: 'Roboto'),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: AppColors.red,
      ),
    );
  }
}
