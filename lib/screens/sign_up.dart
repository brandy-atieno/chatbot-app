import 'package:flutter/material.dart';
import 'package:bot_final/utilities/color.dart';
import 'package:bot_final/screens/sign_in.dart';
import 'package:bot_final/screens/name.dart';
import 'package:bot_final/screens/time.dart';
import 'package:bot_final/screens/chat_screen.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    final EmailController = TextEditingController();
    final PasswordController = TextEditingController();
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('CREATE ACCOUNT',
                style: TextStyle(color: AppColors.buttonText)),
            const Text('Email', style: TextStyle(color: AppColors.buttonText)),
            TextFormField(
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
            const Text('Already have an account?Log In',
                style: TextStyle(color: AppColors.buttonText)),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  // ignore: avoid_print
                  onPressed: () async => print('Yey!'),
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
