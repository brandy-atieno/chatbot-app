import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';

class Name extends StatelessWidget {
  const Name({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Choose Name'),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: const Image(
              image: AssetImage('assets/images/images2-chatbot.jpg')),
        ),
        const Text(' Hey Sandie'),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: const Image(
              image: AssetImage('assets/images/images2-chatbot.jpg')),
        ),
        const Text('Select a name'),
        const TextButton(
          // ignore: avoid_print
          onPressed: () => {print('Name time')},

          // ignore: unnecessary_const
          child:
              const Text('Next', style: TextStyle(color: AppColors.buttonText)),
        )
      ],
    ));
  }
}
