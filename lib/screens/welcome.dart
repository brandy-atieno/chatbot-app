import 'package:flutter/material.dart';
import 'package:bot_final/utilities/color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text('Welcome To FreeMindz'),
      ), 
      body: Container(
        child: Center(
          child: (Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Meet Sandie',
                    style: TextStyle(color: AppColors.buttonText,fontSize: 20.0)),
                const Text('Your chat buddie',
                    style: TextStyle(color: AppColors.buttonText,fontSize: 16.0)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                      image: AssetImage('assets/images/images2-chatbot.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    // ignore: avoid_print
                    onPressed: () => {Navigator.pushNamed(context, '/signup')},
                    style: TextButton.styleFrom(
                        backgroundColor: AppColors.button,
                        fixedSize: const Size(227, 61),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Text('signup',
                        style: TextStyle(color: AppColors.buttonText,fontSize:16.0)),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    // ignore: avoid_print
                    onPressed: () => {Navigator.pushNamed(context, '/signin')},
                    style: TextButton.styleFrom(
                        backgroundColor: AppColors.button,
                        fixedSize: const Size(227, 61),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Text('login',
                        style: TextStyle(color: AppColors.buttonText,fontSize:16.0)),
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
