import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a)
  ];

  @override
  Widget build(BuildContext context) => LineChart(
      LineChartData(
          minX: 0,
          maxX: 3,
          minY: 0,
          maxY: 2000,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: const Color(0xFFCF8DC), // bluegreywhite finch yellow: 0xffffd600
                  strokeWidth: 0.1,
                );
              },
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: const Color(0xFFCF8DC),
                  strokeWidth: 0.1,
                );
              }),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                /*                FlSpot(0, 1000),
                FlSpot(1, 923),
                FlSpot(2, 879),
                FlSpot(3, 912),
                FlSpot(4, 987),
                FlSpot(5, 1002),
                FlSpot(6, 1020),
                FlSpot(7, 1070),
                FlSpot(8, 1120),*/
                FlSpot(0, 1000),
                FlSpot(1, 1140),
                FlSpot(2, 875),
                FlSpot(3, 1330)
              ],
              isCurved: true,
              colors: gradientColors,
              barWidth: 2,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                  .map((color) => color.withOpacity(0.17))
                  .toList(),
              )
            )
          ]));
}


class LineTitles {
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles:  SideTitles(
      showTitles: true,
      reservedSize: 10,
      getTextStyles: (value) => const TextStyle(
        color: Color(0xff7e9de4),   // finch color
        fontSize: 14,
      ),
      getTitles: (value) {
        switch(value.toInt()) {
          case 2:
            return 'yesterday';
          case 0:
            return '3 days ago';
        }
        return'';
      },
      margin: 10,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTitles: (value) {
        switch(value.toInt()) {
          case 1000:
            return '1k';
          case 2000:
            return '2k';
        }
        return'';
      },
      reservedSize: 10,
      getTextStyles: (value) => const TextStyle(
        color: Color(0xff7e9de4),   // finch color
        fontSize: 14,
      ),
      margin: 20
    )
  );
}