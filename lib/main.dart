import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:bot_final/utilities/color.dart';
import 'package:bot_final/screens/sign_in.dart';
import 'package:bot_final/screens/name.dart';
import 'package:bot_final/screens/time.dart';
import 'package:bot_final/screens/chat_screen.dart';

void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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
            fillColor:
                MaterialStateColor.resolveWith((states) => AppColors.button)),
      ),
      home: const ChatScreen(),
    );
  }
}

// /
