import 'package:flutter/material.dart';
import 'package:flutteradmin/components/buttons/buttons.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
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
                      "Normal Button",
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Buttons(
                          text: "Button",
                          type: ButtonsType.buttons1,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Buttons(
                          text: "Button",
                          type: ButtonsType.buttons2,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Buttons(
                          text: "Button",
                          type: ButtonsType.buttons3,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Buttons(
                          text: "Button",
                          type: ButtonsType.buttons4,
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
                      "Button With Icon",
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Buttons(
                          icon: Icons.message_outlined,
                          text: "Button",
                          type: ButtonsType.buttons1,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Buttons(
                          icon: Icons.message_outlined,
                          text: "Button",
                          type: ButtonsType.buttons2,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Buttons(
                          icon: Icons.message_outlined,
                          text: "Button",
                          type: ButtonsType.buttons3,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Buttons(
                          icon: Icons.message_outlined,
                          text: "Button",
                          type: ButtonsType.buttons4,
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
