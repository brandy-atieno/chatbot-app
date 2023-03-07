import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    return Scaffold(
      body: Center(
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(child: const Text('Hello welcome to FreeMindz')),
              const Text('Meet Sandie'),
              const Text('Your chat buddie'),
              const ClipOval(
                child:Image(
                  image: AssetImage('assets/images/images-chatbot.png')),
              ),
              // ignore: avoid_print
              TextButton(onPressed:()=>{print('Pressed')},style: TextButton.styleFrom(foregroundColor: AppColors.button), child: const Text('continue'),)
            ])),
      ),
    );
  }
}
