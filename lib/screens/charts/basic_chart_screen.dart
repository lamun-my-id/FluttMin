import 'package:flutter/material.dart';
import 'package:flutteradmin/components/charts/bar_chart.dart';
import 'package:flutteradmin/components/charts/doughnut_chart.dart';
import 'package:flutteradmin/components/charts/line_chart.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

class BasicChartScreen extends StatefulWidget {
  const BasicChartScreen({super.key});

  @override
  State<BasicChartScreen> createState() => _BasicChartScreenState();
}

class _BasicChartScreenState extends State<BasicChartScreen> {
  @override
  Widget build(BuildContext context) {
    double width = context.width();
    return WrapperComponent(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
