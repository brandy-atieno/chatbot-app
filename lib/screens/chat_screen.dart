import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
        ),
      ),
    );
  }
}
