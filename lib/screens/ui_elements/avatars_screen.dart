import 'package:flutter/material.dart';
import 'package:flutteradmin/components/alerts/alerts.dart';
import 'package:flutteradmin/components/avatars/avatars.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

class AvatarsScreen extends StatefulWidget {
  const AvatarsScreen({super.key});

  @override
  State<AvatarsScreen> createState() => _AvatarsScreenState();
}

class _AvatarsScreenState extends State<AvatarsScreen> {
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
                      "Alerts Style 1",
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
                          children: List.generate(5, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: Avatars(
                                size: 20 + (5 * (index + 1)),
                                value: ProfileModel(
                                  id: "id",
                                  name: "",
                                  photo: "",
                                ),
                              ),
                            );
                          }),
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
                      "Alerts Style 2",
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
                          children: List.generate(5, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: Avatars(
                                size: 20 + (5 * (index + 1)),
                                showStatusActivity: true,
                                value: ProfileModel(
                                  id: "id",
                                  name: "",
                                  photo: "",
                                ),
                              ),
                            );
                          }),
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
                      "Alerts Style 3",
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
                          children: List.generate(5, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: Avatars(
                                showStatusActivity: false,
                                size: 20 + (5 * (index + 1)),
                                value: ProfileModel(
                                  id: "id",
                                  name: "",
                                  photo: "",
                                ),
                              ),
                            );
                          }),
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
