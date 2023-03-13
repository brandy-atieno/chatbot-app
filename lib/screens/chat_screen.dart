import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null),
      title: const Text('FreeMindz')
     ),
       
    );
  }
}
