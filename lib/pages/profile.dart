import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.white),
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 250,
              backgroundColor: Colors.black,
              title: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/emily2c.png',
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text('Emily Wilson')
                  ],
                ),
              ),
            ),
            body: Text('HI')

              ),


            );
  }
}

