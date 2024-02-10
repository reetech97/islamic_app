
import 'package:flutter/material.dart';

const primaryLight = Color(0xFFB7935F);
const onPrimaryLight = Color(0xFFFFFFFF);
const onPrimarySelectedLight = Color(0xFF000000);

const primaryDark = Color(0xFF141A2E);
const onPrimaryDark = Color(0xFFFFFFFF);
const onPrimarySelectedDark = Color(0xFFFACC1D);

final lightTheme = ThemeData(
  primaryColor: primaryLight,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: primaryLight,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: onPrimaryLight,
    selectedItemColor: onPrimarySelectedLight,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    foregroundColor: Colors.black,
    titleTextStyle: TextStyle(
      color: onPrimarySelectedLight,
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),
    elevation: 0
  ),
  scaffoldBackgroundColor: Colors.transparent,
  dividerTheme: DividerThemeData(
    color: Colors.transparent,
    thickness: 0
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16)
    )
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      )
    )
  ),
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: primaryLight,
    )
  )
);