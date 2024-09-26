import 'package:flutter/material.dart';
import 'package:flutteradmin/components/charts/bar_chart.dart';
import 'package:flutteradmin/components/charts/doughnut_chart.dart';
import 'package:flutteradmin/components/charts/line_chart.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

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
      "value": "123.456.789",
      "name": "Total Views",
      "icon": Icons.visibility_outlined,
      "compare": 0.43,
    },
    {
      "value": "654.321",
      "name": "Total Profits",
      "icon": Icons.card_travel_outlined,
      "compare": 4.33,
    },
    {
      "value": "2.234",
      "name": "Total Product",
      "icon": Icons.shopping_bag_outlined,
      "compare": 2.59,
    },
    {
      "value": "3.456",
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
          padding: const EdgeInsets.symmetric(
              // horizontal: context.margin(
              //   excuse: 300,
              // ),
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
                child: const Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: LineChart(),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 3,
                      child: BarChart(),
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
                    const Expanded(
                      flex: 3,
                      child: DoughnutChart(),
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
