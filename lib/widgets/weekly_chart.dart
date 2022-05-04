import 'package:covid_19/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: BarChart(
        BarChartData(
          gridData: FlGridData(show: false),
          barGroups: getBarGroup(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

getBarGroup() {
  List<double> barChartDatas = [6, 9, 8, 3, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
    (i, value) {
      barChartGroups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: value,
              color: i == 3 ? kPrimaryColor : kInactiveChartColor,
              width: 16,
            ),
          ],
        ),
      );
    },
  );
  return barChartGroups;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return 'Mon';
    case 1:
      return 'Tue';
    case 2:
      return 'Wed';
    case 3:
      return 'Thu';
    case 4:
      return 'Fri';
    case 5:
      return 'Sar';
    case 6:
      return 'Sun';
    default:
      return '';
  }
}
