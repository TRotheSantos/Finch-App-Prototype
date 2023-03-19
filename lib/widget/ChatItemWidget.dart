import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String image;
  final String chatName;
  final String lastChat;

  const ChatItem(
      {required this.image, required this.chatName, required this.lastChat});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 50, //Not nice, update after
          width: 50,
        ),
        SizedBox(width: 20),
        Column(
          children: [
            Text(chatName, style: TextStyle(fontSize: 18)),
            SizedBox(height: 7),
            Text(lastChat,
                style: TextStyle(fontSize: 12, color: Colors.white24)),
          ],
        )
      ],
    );
  }
}