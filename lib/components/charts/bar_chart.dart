import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  const BarChart({super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
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
      child: SfCartesianChart(
        title: const ChartTitle(text: 'Profit this year'),
        primaryXAxis: const CategoryAxis(),
        primaryYAxis: const NumericAxis(minimum: 0, maximum: 100, interval: 10),
        legend: const Legend(isVisible: true, position: LegendPosition.top),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CartesianSeries<_ChartData, String>>[
          ColumnSeries<_ChartData, String>(
            dataSource: [
              _ChartData('Jan', 20),
              _ChartData('Feb', 10),
              _ChartData('Mar', 22),
              _ChartData('Apr', 32),
              _ChartData('May', 44),
              _ChartData('Jun', 23),
              _ChartData('Jul', 17),
              _ChartData('Aug', 19),
              _ChartData('Sep', 43),
              _ChartData('Okt', 51),
              _ChartData('Nov', 23),
              _ChartData('Des', 55),
            ],
            xValueMapper: (_ChartData data, _) => data.title,
            yValueMapper: (_ChartData data, _) => data.value,
            name: 'Revenue',
            color: Colors.purple,
          ),
          ColumnSeries<_ChartData, String>(
            dataSource: [
              _ChartData('Jan', 30),
              _ChartData('Feb', 20),
              _ChartData('Mar', 32),
              _ChartData('Apr', 42),
              _ChartData('May', 54),
              _ChartData('Jun', 33),
              _ChartData('Jul', 27),
              _ChartData('Aug', 29),
              _ChartData('Sep', 53),
              _ChartData('Okt', 61),
              _ChartData('Nov', 33),
              _ChartData('Des', 65),
            ],
            xValueMapper: (_ChartData data, _) => data.title,
            yValueMapper: (_ChartData data, _) => data.value,
            name: 'Sales',
            color: Colors.lightBlue,
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
