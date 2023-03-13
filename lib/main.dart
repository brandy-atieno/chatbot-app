import 'package:flutter/material.dart';
import 'package:chatbot_app_2/screens/welcome.dart';
import 'package:chatbot_app_2/screens/sign_up.dart';
import 'package:chatbot_app_2/screens/sign_in.dart';
import 'package:chatbot_app_2/screens/name.dart';
import 'package:chatbot_app_2/screens/time.dart';



import 'package:chatbot_app_2/utilities/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Bot Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.primary,
        radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => AppColors.button)),
      ),
      home: const Time(),
    );
  }
}
