import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contacts/core/constant/colors.dart';

final _lightThemeData = ThemeData(
    fontFamily: "sinkinsans",
    primaryColor: AppColors.backgroundColor,
    primarySwatch: Colors.blue,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white);
final _darkThemeData = ThemeData.dark();

final primaryMaterialTheme = _lightThemeData.copyWith(
    textTheme: _lightThemeData.textTheme.apply(
  fontFamily: 'Arial',
));
final darkMaterialTheme = _darkThemeData.copyWith(
  textTheme: _darkThemeData.textTheme.apply(
    fontFamily: 'Arial',
  ),
);

const primaryCupertinoTheme = CupertinoThemeData(
  primaryColor: CupertinoDynamicColor.withBrightness(
    color: Colors.grey,
    darkColor: Colors.black45,
  ),
);
