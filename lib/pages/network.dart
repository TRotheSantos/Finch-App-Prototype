import 'package:finch/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/chatdata.dart';
import '../widget/ChatWidget.dart';


enum Options { optionOne, optionTwo, optionThree }



class NetworkPage extends StatefulWidget {
  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.white),
        home: Scaffold(
          appBar: AppBar(
              toolbarHeight: 90,
              backgroundColor: Colors.black,
              title: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Row(children: <Widget>[
                      Image.asset(
                        'assets/images/emily2c.png',
                        height: 60, //Not nice, update after
                        width: 60,
                      ),
                      Text('   Emily Wilson',
                          style: TextStyle(
                            color: Colors.white, // original finch color
                            fontSize: 25,
                          ))
                    ]),
                  ),
                  Spacer(),
                  Align(child: PopupMenu())
                ],
              )),
          body: Chat(itemCount: chatCount, images: images, chatNames: chatNames, lastChats: lastChats),
        ));
  }
}

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  Options? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PopupMenuButton<Options>(
            initialValue: selectedMenu,
            onSelected: (Options item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
                  const PopupMenuItem<Options>(
                    value: Options.optionOne,
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<Options>(
                    value: Options.optionTwo,
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem<Options>(
                    value: Options.optionThree,
                    child: Text('Item 3'),
                  ),
                ]));
  }
}

