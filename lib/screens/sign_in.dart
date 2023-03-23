import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:bot_final/utilities/color.dart';
import 'package:bot_final/screens/sign_in.dart';
import 'package:bot_final/screens/name.dart';
import 'package:bot_final/screens/time.dart';
import 'package:bot_final/screens/chat_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('LOG IN', style: TextStyle(color: AppColors.buttonText)),
            const Text('Email', style: TextStyle(color: AppColors.buttonText)),
            TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.buttonText),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.buttonText),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        )))),
            const Text('Password',
                style: TextStyle(color: AppColors.buttonText)),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.buttonText),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: AppColors.buttonText),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                // fillColor:,
              ),
            ),
            const Text('Forgot password ?',
                style: TextStyle(color: AppColors.buttonText)),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  // ignore: avoid_print
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: AppColors.button,
                      fixedSize: const Size(227, 61),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),

                  child: const Text('Next',
                      style: TextStyle(color: AppColors.buttonText)),
                )),
          ]),
    )));
  }
}
