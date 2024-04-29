import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: MainScreen(),
    );
// reem
  }
}