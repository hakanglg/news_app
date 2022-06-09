import 'package:flutter/material.dart';
import 'package:news_app/core/constants/app/app_constants.dart';
import 'package:news_app/core/constants/color/color_constants.dart';

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: ApplicationConstants.FONT_FAMILY,
    scaffoldBackgroundColor: ColorConstants.instance.riceBowl,
    appBarTheme: AppBarTheme(
        backgroundColor: ColorConstants.instance.riceBowl,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorConstants.instance.black)),

    // TEXT THEME
    textTheme: TextTheme(
        bodyText1: TextStyle(
            color: ColorConstants.instance.black, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(
            fontWeight: FontWeight.w600,
            height: 1.7,
            color: ColorConstants.instance.darkGrey),
        headline4: TextStyle(
            fontFamily: ApplicationConstants.HEADLINE_FONT_FAMILY,
            color: ColorConstants.instance.black,
            fontWeight: FontWeight.bold)));
