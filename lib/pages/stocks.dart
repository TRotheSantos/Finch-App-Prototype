import 'package:finch/pages/search.dart';
import 'package:finch/widget/LineChartWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';

import '../widget/BalanceWidget.dart';
import '../widget/ShareItemWidget.dart';

class StockPage extends StatefulWidget {
  @override
  _StockPageState createState() => _StockPageState(greeting: 'Good evening, ', name: 'Emily!');
}

class _StockPageState extends State<StockPage> {
  final String greeting;
  final String name;

   _StockPageState({required this.greeting, required this.name});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
        ThemeData(brightness: Brightness.dark, primaryColor: Colors.white),
        home: Scaffold(
            backgroundColor: Colors.black.withOpacity(0.9),
            appBar: AppBar(
              title: Text(greeting + ' ' + name),
              backgroundColor: Colors.black,
            ),
            body: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                child: Row(children: <Widget>[
                  BalanceWidget(balance: 1330.23, percentage: 14.984),
                  Spacer(),
                  ElevatedButton(onPressed: null , child: Text('Option A')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: null , child: Text('Option B')),
                ]),
              ),
              Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(12.0),
                  height: 270,
                  width: 370,
                  child: LineChartWidget()),
              Expanded(
                  child: Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(12.0),
                      child: ListOfShares()))
            ])));
  }
}

class ListOfShares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: [
      ShareItem(
          title: 'Amazon.com, Inc.',
          image: 'assets/images/amazon.png',
          percentage: 3.9),
      ShareItem(
          title: 'Apple Inc.',
          image: 'assets/images/applew.jpg',
          percentage: -1.2),
      ShareItem(title: 'CVSHealth', image: 'assets/images/cvs.jpg', percentage: 32.1),
      ShareItem(title: 'Alphabet', image: 'assets/images/alphabet.png', percentage: 4.7),
      ShareItem(title: 'Microsoft', image: 'assets/images/microsoft.jpg', percentage: -12.6),
      ShareItem(title: 'John Deere', image: 'assets/images/john.png', percentage: 9.3)
    ]);
  }
}


