import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:chatbot_app_2/utilities/color.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Center(
              child: Column(children: const <Widget>[
                  Text('CREATE ACCOUNT'),
                  Text('Email'),
                  Text('Password'),
                  Text('Already have an account?Log In'),
                  Text('Next'),
                ]),
            )));
  }
}
