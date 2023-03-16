import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';
import 'package:chatbot_app_2/screens/sign_in.dart';
import 'package:chatbot_app_2/screens/name.dart';
import 'package:chatbot_app_2/screens/time.dart';
import 'package:chatbot_app_2/screens/chat_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const IconButton(
              icon: Icon(
                Icons.menu,
                color: AppColors.buttonText,
              ),
              tooltip: 'Navigation menu',
              onPressed: null),
          title: const Text('FreeMindz'),
          backgroundColor:AppColors.primary,
),
    );
  }
}