import 'package:flutter/material.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';
import 'package:flutteradmin/components/badge/badge.dart' as c;

class BadegeScreen extends StatefulWidget {
  const BadegeScreen({super.key});

  @override
  State<BadegeScreen> createState() => _BadegeScreenState();
}

class _BadegeScreenState extends State<BadegeScreen> {
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
            Container(
              width: width,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    height: 50,
                    width: width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[400]!,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Badge Style 1",
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey[800]!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Colors.deepPurple,
                            Colors.lightGreen,
                            Colors.grey[800]!,
                            Colors.grey[500]!,
                            Colors.grey[300]!,
                            Colors.orange,
                            Colors.red,
                            Colors.green,
                            Colors.lightBlue
                          ].map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: c.Badge(
                                "Primary",
                                color: e,
                                type: c.BadgeType.badge1,
                              ),
                            );
                          }).toList(),
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
            const SizedBox(
              height: 16,
            ),
            Container(
              width: width,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    height: 50,
                    width: width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[400]!,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Badge Style 2",
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey[800]!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Colors.deepPurple,
                            Colors.lightGreen,
                            Colors.grey[800]!,
                            Colors.grey[500]!,
                            Colors.grey[300]!,
                            Colors.orange,
                            Colors.red,
                            Colors.green,
                            Colors.lightBlue
                          ].map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: c.Badge(
                                "Primary",
                                color: e,
                                type: c.BadgeType.badge2,
                              ),
                            );
                          }).toList(),
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
            const SizedBox(
              height: 16,
            ),
            Container(
              width: width,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    height: 50,
                    width: width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[400]!,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Badge Style 3",
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey[800]!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Colors.deepPurple,
                            Colors.lightGreen,
                            Colors.grey[800]!,
                            Colors.grey[500]!,
                            Colors.grey[300]!,
                            Colors.orange,
                            Colors.red,
                            Colors.green,
                            Colors.lightBlue
                          ].map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: c.Badge(
                                "Primary",
                                color: e,
                                type: c.BadgeType.badge3,
                              ),
                            );
                          }).toList(),
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
            const SizedBox(
              height: 16,
            ),
            Container(
              width: width,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    height: 50,
                    width: width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[400]!,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Badge Style 4",
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey[800]!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Colors.deepPurple,
                            Colors.lightGreen,
                            Colors.grey[800]!,
                            Colors.grey[500]!,
                            Colors.grey[300]!,
                            Colors.orange,
                            Colors.red,
                            Colors.green,
                            Colors.lightBlue
                          ].map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: c.Badge(
                                "Primary",
                                color: e,
                                type: c.BadgeType.badge4,
                              ),
                            );
                          }).toList(),
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
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
