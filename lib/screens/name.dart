import 'package:flutter/material.dart';
import 'package:bot_final/utilities/color.dart';
import 'package:bot_final/screens/sign_in.dart';
import 'package:bot_final/screens/name.dart';
import 'package:bot_final/screens/time.dart';
import 'package:bot_final/screens/chat_screen.dart';

class Name extends StatelessWidget {
  const Name({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Choose A Name')
      ),
        body: Container(
          padding:const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
         
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                  image: AssetImage('assets/images/images2-chatbot.jpg')),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(' Hey Sandie here ...',
                style: TextStyle(color: AppColors.buttonText)),
          ),
          Align(
                      alignment: Alignment.centerRight,
        
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                  image: AssetImage('assets/images/images2-chatbot.jpg')),
            ),
          ),
          const Align(
                                alignment: Alignment.centerLeft,
        
            child: Text('I am excited to know you please select a name to continue',
                style: TextStyle(color: AppColors.buttonText)),
          ),
          TextFormField(
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.buttonText),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.buttonText),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                // fillColor:,
                hintText: 'Write a name ...',
                hintStyle: TextStyle(color: AppColors.buttonText)),
          ),
            
              TextButton(
                  // ignore: avoid_print
                  onPressed: () =>{
                    Navigator.pushNamed(context,'/chatscreen')
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: AppColors.button,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),

                  child: const Text('Next',
                      style: TextStyle(color: AppColors.buttonText)),
                ),
              ],
            ),
        ));
  }
}
