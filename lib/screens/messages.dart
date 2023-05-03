import 'package:flutter/material.dart';
import 'package:bot_final/utilities/color.dart';
import 'package:intl/intl.dart';

class MessagesScreen extends StatefulWidget {
  final List<Map<String, dynamic>> messages;
  const MessagesScreen({Key? key, required this.messages}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated(
      itemBuilder: (context, index) {
        final message = widget.messages[index];
        final timestamp = message['timestamp'] != null
            ? DateFormat('hh:mm a').format(message['timestamp']!)
            : DateFormat('hh:mm a').format(DateTime.now());

        return Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: message['isUserMessage']
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight:
                        Radius.circular(message['isUserMessage'] ? 0 : 20),
                    topLeft: Radius.circular(message['isUserMessage'] ? 20 : 0),
                  ),
                  color: message['isUserMessage']
                      ? AppColors.bot
                      : AppColors.user.withOpacity(0.8),
                ),
                constraints: BoxConstraints(maxWidth: w * 2 / 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      message['message'].text.text[0],
                      style: TextStyle(fontSize: 16,color: AppColors.buttonText),
                    ),
                    SizedBox(height: 6),
                    Text(
                      timestamp,
                      style: TextStyle(fontSize: 12, color:AppColors.buttonText),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
      itemCount: widget.messages.length,
    );
  }
}
