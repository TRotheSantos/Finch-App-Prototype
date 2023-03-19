import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widget/PostWidget.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.yellow),
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.black,
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logoplustitle.JPG',
                      height: 40, //Not nice, update after
                      width: 40,
                    ),
                    Text('  FINCH',
                        style: TextStyle(
                          color: Colors.white, // original finch color
                          fontSize: 30,
                        )),
                  ],
                )),
            body: Feed()));
  }
}

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PostCard();
        },
      ),
    );
  }
}

