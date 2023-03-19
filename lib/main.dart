import 'package:finch/pages/feed.dart';
import 'package:finch/pages/network.dart';
import 'package:finch/pages/search.dart';
import 'package:finch/pages/stocks.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List<Widget> screens = [
    FeedPage(),
    StockPage(),
    NetworkPage()
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.yellow),
        home: Scaffold(
            body: screens[index],
            bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                indicatorColor: Colors.black,
              ),
              child: NavigationBar(
                backgroundColor: Colors.black,
                height: 60,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                selectedIndex: index,
                animationDuration: Duration(seconds: 3),
                onDestinationSelected: (index) =>
                    setState(() => this.index = index),
                destinations: [
                  NavigationDestination(
                      icon: Icon(Icons.flutter_dash), label: 'Feed', selectedIcon: Icon(Icons.flutter_dash_outlined)),
                  NavigationDestination(
                      icon: Icon(Icons.auto_graph), label: 'Stocks', selectedIcon: Icon(Icons.auto_graph_outlined)),
                  NavigationDestination(
                      icon: Icon(Icons.groups), label: 'Network', selectedIcon: Icon(Icons.groups_outlined))
                ],
              ),
            ),
        ));
  }
}
