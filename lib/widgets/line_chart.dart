import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LinerReportChart extends StatelessWidget {
  const LinerReportChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: getSports(),
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: false,
              ),
              color: kPrimaryColor,
              barWidth: 3,
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSports() {
    return const [
      FlSpot(0, .5),
      FlSpot(1, 1.5),
      FlSpot(2, .5),
      FlSpot(3, .7),
      FlSpot(4, .2),
      FlSpot(5, 2),
      FlSpot(6, 1.5),
      FlSpot(7, 1.7),
      FlSpot(8, 1),
      FlSpot(9, 2.8),
      FlSpot(10, 2.5),
      FlSpot(11, 2.65)
    ];
  }
}
