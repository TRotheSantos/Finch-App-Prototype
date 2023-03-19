import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareItem extends StatelessWidget {
  final String title;
  final String image;
  final double percentage;
  final int colorCode = 0xff02d39a;

  const ShareItem(
      {required this.title, required this.image, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            width: 70,
          ),
          Title(
              color: Colors.white,
              child:
              Text(style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  title)),
          Title(
              color: Color(0xff02d39a),
              child:
              Text(style: TextStyle(fontSize: 18, color: percentageColor.color(percentage)),
                  '$percentage%'))
        ],
      ),
    );
  }
}

class percentageColor {
  static color(double percentage){
    if(percentage > 0){
      return Color(0xff02d39a);
    } else{
      return Colors.red;
    }
  }
}