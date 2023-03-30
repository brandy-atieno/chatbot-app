import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bot_final/utilities/color.dart';
import 'package:bot_final/screens/sign_in.dart';
import 'package:bot_final/screens/sign_up.dart';
import 'package:bot_final/screens/name.dart';
import 'package:bot_final/screens/welcome.dart';

import 'package:bot_final/screens/time.dart';
import 'package:bot_final/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat  Application',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.primary,
          radioTheme: RadioThemeData(
              fillColor:
                  MaterialStateColor.resolveWith((states) => AppColors.button)),
        ),
        home: const WelcomeScreen(),
        routes: {
          '/signup': (context) => const SignUP(),
          '/signin': (context) => const SignIn(),
          '/name': (context) => const Name(),
          '/time': (context) => const Time(),
          '/chatscreen': (context) => const ChatScreen(),
        });
  }
}


// /
