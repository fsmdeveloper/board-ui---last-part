import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  //Color

  static Color primaryColor = HexColor('#41D9C6'); //App Main Color
  static Color white = HexColor('#ffffff');
  static Color grey = Colors.grey;
  static Color textColor = HexColor('#323643');
  static Color textColor2 = HexColor('#BCBCBC');
  static Color iconColor = HexColor('#F7D107');

  //Font Size

  static double textSize20 = 20;
  static double textSize19 = 19;
  static double textSize18 = 18;

  static double textSize17 = 17;
  static double textSize16 = 16;

  static double textSize15 = 15;
  static double textSize14 = 14; //Main Button textSize
  static double textSize13 = 13;

  static double textSize12 = 12;
  static double textSize11 = 11;

  static double textSize10 = 10;

  // font Style Poppins

  static FontWeight bold = FontWeight.bold;
  static FontWeight semi = FontWeight.w700;
  static FontWeight medium = FontWeight.w600;
  static FontWeight regular = FontWeight.normal;

  static double height50 = 50;
  static double height55 = 55;
  static double widthMax = Get.width;

// Padding Body

  static EdgeInsetsGeometry paddingH40 = EdgeInsets.symmetric(horizontal: 40);
  static EdgeInsetsGeometry paddingHV40 =
      EdgeInsets.symmetric(horizontal: 30, vertical: 20);
  static EdgeInsetsGeometry paddingH30 = EdgeInsets.symmetric(horizontal: 30);

// Border Circular

  static BorderRadiusGeometry circular10 = BorderRadius.circular(10);
  static BorderRadiusGeometry circular20 = BorderRadius.circular(20);
  static BorderRadiusGeometry circular30 = BorderRadius.circular(30);

  static ThemeData appTheme = ThemeData(
    // fontFamily: 'Poppins Regular',
    scaffoldBackgroundColor: AppTheme.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppTheme.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppTheme.textColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(

      
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.grey.shade100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.grey.shade100,
        ),
      ),
    ),
  );
}
