import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class BalanceWidget extends StatelessWidget {
  final double balance;
  final double percentage;

  const BalanceWidget({required this.balance, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '€ $balance',
            style: TextStyle(fontSize: 26),
          ),
          Text('+ $percentage %',
              style: TextStyle(
                  color: Color(0xff02d39a), height: 1.5, fontSize: 15)),
        ],
      ),
    );
  }
}