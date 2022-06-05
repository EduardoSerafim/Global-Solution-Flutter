//TEMA LIGTH

import 'package:flutter/material.dart';

const _primarySwatch = Colors.red;
const _appBarColor = Colors.red;
const _appBarTextColor = Colors.black;
const _appBarIconColor = Colors.black;

ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: _primarySwatch,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.red, onPrimary: Colors.white)
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: _appBarIconColor),
      backgroundColor: _appBarColor,
      titleTextStyle: TextStyle(color: _appBarTextColor, fontSize: 25)
    )
            
);
