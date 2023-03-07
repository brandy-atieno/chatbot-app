import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:chatbot_app_2/utilities/color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var onPressed;
    return Scaffold(
      body: Center(
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Hello welcome to FreeMindz'),
              const Text('Meet Sandie'),
              const Text('Your chat buddie'),
              const Image(
                  image: AssetImage('assets/images/images-chatbot.png')),
              TextButton(onPressed: onPressed, child: const Text('continue'))
            ])),
      ),
    );
  }
}
