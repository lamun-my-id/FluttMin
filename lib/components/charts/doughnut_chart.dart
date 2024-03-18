import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart extends StatefulWidget {
  const DoughnutChart({super.key});

  @override
  State<DoughnutChart> createState() => _DoughnutChartState();
}

class _DoughnutChartState extends State<DoughnutChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            color: Colors.black.withOpacity(0.12),
            blurRadius: 4,
          ),
        ],
      ),
      child: SfCircularChart(
        title: const ChartTitle(text: 'Visitors analitycs'),
        tooltipBehavior: TooltipBehavior(enable: true),
        legend: const Legend(
          isVisible: true,
          position: LegendPosition.bottom,
        ),
        series: <CircularSeries<_ChartData, String>>[
          DoughnutSeries<_ChartData, String>(
            dataSource: [
              _ChartData('Desktop', 20),
              _ChartData('Mobile', 10),
              _ChartData('Tablet', 22),
              _ChartData('Unknown', 32),
            ],
            xValueMapper: (_ChartData data, _) => data.title,
            yValueMapper: (_ChartData data, _) => data.value,
            name: 'Gold',
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.title, this.value);

  final String title;
  final double value;
}
