import 'package:finch/widget/ChatItemWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Chat extends StatelessWidget {
  final int itemCount;
  final List<String> images;
  final List<String> chatNames;
  final List<String> lastChats;

  const Chat(
      {required this.itemCount, required this.images, required this.chatNames, required this.lastChats});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(padding: const EdgeInsets.all(20
    )
      ,
      itemCount: itemCount, itemBuilder: (BuildContext context, int
      index) {
        return Container(
          height: 50,
          child: ChatItem(image: images[index],
            chatName: chatNames[index],
            lastChat: lastChats[index],),
        );
      },
      separatorBuilder: (BuildContext context, int
      index) =>
      const Divider()
      ,

    );
  }
}
