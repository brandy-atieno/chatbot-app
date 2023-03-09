import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:chatbot_app_2/utilities/color.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
            const Text('LOG IN',
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
            const Text('Forgot password ?',
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
