import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 10,
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final labels = ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Min'];
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      labels[value.toInt()],
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  );
                },
                reservedSize: 32,
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(toY: 5, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(toY: 6, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(toY: 4, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(toY: 8, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(toY: 3, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(toY: 7, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(toY: 4.5, color: Colors.cyanAccent, width: 16, borderRadius: BorderRadius.circular(4)),
            ]),
          ],
        ),
      ),
    );
  }
}
