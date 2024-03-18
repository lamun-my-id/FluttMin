import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({super.key});

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
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
        primaryXAxis: const CategoryAxis(),
        // Chart title
        title: const ChartTitle(text: 'Half yearly sales analysis'),
        // Enable legend
        legend: const Legend(isVisible: true, position: LegendPosition.top),
        // Enable tooltip
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CartesianSeries<_ChartData, String>>[
          AreaSeries<_ChartData, String>(
            markerSettings: const MarkerSettings(
              isVisible: true,
              height: 4,
              width: 4,
              shape: DataMarkerType.circle,
              borderWidth: 4,
              borderColor: Colors.purple,
            ),
            color: Colors.deepPurple[200]!.withOpacity(0.5),
            dataLabelSettings: const DataLabelSettings(
              isVisible: false,
              labelAlignment: ChartDataLabelAlignment.auto,
            ),
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
            xValueMapper: (_ChartData sales, _) => sales.title,
            yValueMapper: (_ChartData sales, _) => sales.value,
            name: 'Revenue',
          ),
          AreaSeries<_ChartData, String>(
            markerSettings: const MarkerSettings(
              isVisible: true,
              height: 4,
              width: 4,
              shape: DataMarkerType.circle,
              borderWidth: 3,
              borderColor: Colors.lightBlue,
            ),
            color: Colors.lightBlue[200]!.withOpacity(0.5),
            dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              labelAlignment: ChartDataLabelAlignment.auto,
            ),
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
            xValueMapper: (_ChartData sales, _) => sales.title,
            yValueMapper: (_ChartData sales, _) => sales.value,
            name: 'Sales',
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
