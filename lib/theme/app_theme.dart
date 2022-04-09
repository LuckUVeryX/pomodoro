// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class AppTheme {
  final _draculaColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: _DraculaColors.purple,
    primary: _DraculaColors.purple,
    background: _DraculaColors.background,
    onBackground: _DraculaColors.foreground,
    error: _DraculaColors.red,
  );

  ThemeData get draculaTheme {
    return ThemeData.from(
      colorScheme: _draculaColorScheme,
    ).copyWith(
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: _draculaColorScheme.background,
      ),
    );
  }
}

class _DraculaColors {
  static const background = Color(0xff282a36);
  static const currentLine = Color(0xff44475a);
  static const foreground = Color(0xfff8f8f2);
  static const comment = Color(0xff6272a4);
  static const cyan = Color(0xff8be9fd);
  static const green = Color(0xff50fa7b);
  static const orange = Color(0xffffb86c);
  static const pink = Color(0xffff79c6);
  static const purple = Color(0xffbd93f9);
  static const red = Color(0xffff5555);
  static const yellow = Color(0xfff1fa8c);
}
