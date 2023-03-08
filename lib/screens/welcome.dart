import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body:Container(
      child: Center(
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              const Text('WELCOME TO FREEMINDZ',style:TextStyle(color: AppColors.buttonText)),
              const Text('Meet Sandie',style:TextStyle(color: AppColors.buttonText)),
              const Text('Your chat buddie',style:TextStyle(color: AppColors.buttonText)),
               ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:
                    const Image(image: AssetImage('assets/images/images2-chatbot.jpg')),
              ),
              TextButton(
                // ignore: avoid_print
                onPressed: () => {print('Pressed')},
                style: TextButton.styleFrom(foregroundColor: AppColors.button),
                child: const Text('continue'),
              )
            ])),
      ),
  ),);
  }
}
