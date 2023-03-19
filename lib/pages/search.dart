import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This where you search for profiles, stocks,..',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.yellow)),
    );
  }
}
