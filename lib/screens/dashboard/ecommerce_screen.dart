import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteradmin/components/side_menu_item.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/resources/local_datas/color_data.dart';
import 'package:flutteradmin/resources/models/menu_model.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ECommerceScreen extends StatefulWidget {
  const ECommerceScreen({super.key});

  @override
  State<ECommerceScreen> createState() => _ECommerceScreenState();
}

class _ECommerceScreenState extends State<ECommerceScreen> {
  bool showMenu = false;
  bool showProfile = false;
  bool showMessage = false;
  bool showNotification = false;

  List<Map<String, dynamic>> summary = [
    {
      "value": 123456789,
      "name": "Total Views",
      "icon": Icons.visibility_outlined,
      "compare": 0.43,
    },
    {
      "value": 654321,
      "name": "Total Profits",
      "icon": Icons.card_travel_outlined,
      "compare": 4.33,
    },
    {
      "value": 2234,
      "name": "Total Product",
      "icon": Icons.shopping_bag_outlined,
      "compare": 2.59,
    },
    {
      "value": 3456,
      "name": "Total Users",
      "icon": Icons.group_outlined,
      "compare": -0.95,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WrapperComponent(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.margin(
              excuse: 300,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: width,
                child: Builder(
                  builder: (_) {
                    return Row(
                      children: List.generate(summary.length, (index) {
                        Map<String, dynamic> value = summary[index];
                        return Expanded(
                          child: Row(
                            children: [
                              if (index != 0)
                                const SizedBox(
                                  width: 16,
                                ),
                              Expanded(
                                child: Container(
                                  height: 160,
                                  width: 260,
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200]!,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        child: Icon(
                                          value['icon'],
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "${value['value']}",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 24,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "${value['name']}",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey[400]!,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  (value['compare'] ?? 0) > 0
                                                      ? Icons
                                                          .arrow_upward_outlined
                                                      : Icons
                                                          .arrow_downward_outlined,
                                                  size: 16,
                                                  color:
                                                      (value['compare'] ?? 0) >
                                                              0
                                                          ? Colors.green
                                                          : Colors.lightBlue,
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "${value['compare']}%",
                                                  style: TextStyle(
                                                    color: (value['compare'] ??
                                                                0) >
                                                            0
                                                        ? Colors.green
                                                        : Colors.lightBlue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
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
                          title: const ChartTitle(
                              text: 'Half yearly sales analysis'),
                          // Enable legend
                          legend: const Legend(
                              isVisible: true, position: LegendPosition.top),
                          // Enable tooltip
                          tooltipBehavior: TooltipBehavior(enable: true),
                          series: <CartesianSeries<_SalesData, String>>[
                            AreaSeries<_SalesData, String>(
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
                                _SalesData('Jan', 20),
                                _SalesData('Feb', 10),
                                _SalesData('Mar', 22),
                                _SalesData('Apr', 32),
                                _SalesData('May', 44),
                                _SalesData('Jun', 23),
                                _SalesData('Jul', 17),
                                _SalesData('Aug', 19),
                                _SalesData('Sep', 43),
                                _SalesData('Okt', 51),
                                _SalesData('Nov', 23),
                                _SalesData('Des', 55),
                              ],
                              xValueMapper: (_SalesData sales, _) => sales.year,
                              yValueMapper: (_SalesData sales, _) =>
                                  sales.sales,
                              name: 'Revenue',
                            ),
                            AreaSeries<_SalesData, String>(
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
                                _SalesData('Jan', 30),
                                _SalesData('Feb', 20),
                                _SalesData('Mar', 32),
                                _SalesData('Apr', 42),
                                _SalesData('May', 54),
                                _SalesData('Jun', 33),
                                _SalesData('Jul', 27),
                                _SalesData('Aug', 29),
                                _SalesData('Sep', 53),
                                _SalesData('Okt', 61),
                                _SalesData('Nov', 33),
                                _SalesData('Des', 65),
                              ],
                              xValueMapper: (_SalesData sales, _) => sales.year,
                              yValueMapper: (_SalesData sales, _) =>
                                  sales.sales,
                              name: 'Sales',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
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
                          primaryYAxis: const NumericAxis(
                              minimum: 0, maximum: 100, interval: 10),
                          legend: const Legend(
                              isVisible: true, position: LegendPosition.top),
                          tooltipBehavior: TooltipBehavior(enable: true),
                          series: <CartesianSeries<_SalesData, String>>[
                            ColumnSeries<_SalesData, String>(
                              dataSource: [
                                _SalesData('Jan', 20),
                                _SalesData('Feb', 10),
                                _SalesData('Mar', 22),
                                _SalesData('Apr', 32),
                                _SalesData('May', 44),
                                _SalesData('Jun', 23),
                                _SalesData('Jul', 17),
                                _SalesData('Aug', 19),
                                _SalesData('Sep', 43),
                                _SalesData('Okt', 51),
                                _SalesData('Nov', 23),
                                _SalesData('Des', 55),
                              ],
                              xValueMapper: (_SalesData data, _) => data.year,
                              yValueMapper: (_SalesData data, _) => data.sales,
                              name: 'Revenue',
                              color: Colors.purple,
                            ),
                            ColumnSeries<_SalesData, String>(
                              dataSource: [
                                _SalesData('Jan', 30),
                                _SalesData('Feb', 20),
                                _SalesData('Mar', 32),
                                _SalesData('Apr', 42),
                                _SalesData('May', 54),
                                _SalesData('Jun', 33),
                                _SalesData('Jul', 27),
                                _SalesData('Aug', 29),
                                _SalesData('Sep', 53),
                                _SalesData('Okt', 61),
                                _SalesData('Nov', 33),
                                _SalesData('Des', 65),
                              ],
                              xValueMapper: (_SalesData data, _) => data.year,
                              yValueMapper: (_SalesData data, _) => data.sales,
                              name: 'Sales',
                              color: Colors.lightBlue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
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
                          series: <CircularSeries<_SalesData, String>>[
                            DoughnutSeries<_SalesData, String>(
                              dataSource: [
                                _SalesData('Desktop', 20),
                                _SalesData('Mobile', 10),
                                _SalesData('Tablet', 22),
                                _SalesData('Unknown', 32),
                              ],
                              xValueMapper: (_SalesData data, _) => data.year,
                              yValueMapper: (_SalesData data, _) => data.sales,
                              name: 'Gold',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
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
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 600,
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
                        child: Column(
                          children: [
                            Container(
                              width: width,
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Top Channels",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 60,
                              width: width,
                              color: Colors.grey[50]!,
                              child: Row(
                                children: [
                                  "SOURCE",
                                  "VISITORS",
                                  "REVENUES",
                                  "SALES",
                                  "CONVERSION"
                                ].map((e) {
                                  return Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      child: Text(
                                        e,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            Column(
                              children: List.generate(5, (index) {
                                return Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  height: 80,
                                  width: width,
                                  decoration: BoxDecoration(
                                    border: index != 0
                                        ? Border(
                                            top: BorderSide(
                                              color: Colors.grey[400]!,
                                            ),
                                          )
                                        : null,
                                  ),
                                  child: Row(
                                    children: [
                                      {
                                        "color": Colors.black,
                                        "value": "Google",
                                      },
                                      {
                                        "color": Colors.black,
                                        "value": "3.5K",
                                      },
                                      {
                                        "color": Colors.green,
                                        "value": "Rp. 520.234",
                                      },
                                      {
                                        "color": Colors.black,
                                        "value": "200",
                                      },
                                      {
                                        "color": Colors.blue,
                                        "value": "4.8%",
                                      },
                                    ].map((Map<String, dynamic> e) {
                                      return Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                          ),
                                          child: Text(
                                            e['value'] ?? "-",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: e['color'],
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 600,
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
                        child: Column(
                          children: [
                            Container(
                              width: width,
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Chats",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Column(
                              children: List.generate(6, (index) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  width: width,
                                  height: 80,
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                    width: width,
                                                    child: Text(
                                                      "Orang Ke-${index + 1}",
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "$index menit lalu",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey[500]!,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            SizedBox(
                                              width: width,
                                              child: Text(
                                                "Percakapan Orang Ke-${index + 1}",
                                                style: TextStyle(
                                                  color: Colors.grey[500]!,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
