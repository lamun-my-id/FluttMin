import 'package:flutter/material.dart';
import 'package:flutteradmin/components/accordion/accordion.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

class AccordionScreen extends StatefulWidget {
  const AccordionScreen({super.key});

  @override
  State<AccordionScreen> createState() => _AccordionScreenState();
}

class _AccordionScreenState extends State<AccordionScreen> {
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
                      "Accordion Style 1",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Accordion(
                                title:
                                    "You wanna know why I do this? I wanna know why you don't",
                                content:
                                    "You wanna know why I do this? I wanna know why you don't",
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Accordion(
                                title:
                                    "You wanna know why I do this? I wanna know why you don't",
                                content:
                                    "You wanna know why I do this? I wanna know why you don't",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Accordion(
                                title:
                                    "You wanna know why I do this? I wanna know why you don't",
                                content:
                                    "You wanna know why I do this? I wanna know why you don't",
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Accordion(
                                title:
                                    "You wanna know why I do this? I wanna know why you don't",
                                content:
                                    "You wanna know why I do this? I wanna know why you don't",
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Accordion(
                                title:
                                    "You wanna know why I do this? I wanna know why you don't",
                                content:
                                    "You wanna know why I do this? I wanna know why you don't",
                              ),
                            ],
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
                      "Accordion Style 2",
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
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Accordion(
                          type: AccordionType.old,
                          title:
                              "You wanna know why I do this? I wanna know why you don't",
                          content:
                              "You wanna know why I do this? I wanna know why you don't",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Accordion(
                          type: AccordionType.old,
                          title:
                              "You wanna know why I do this? I wanna know why you don't",
                          content:
                              "You wanna know why I do this? I wanna know why you don't",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Accordion(
                          type: AccordionType.old,
                          title:
                              "You wanna know why I do this? I wanna know why you don't",
                          content:
                              "You wanna know why I do this? I wanna know why you don't",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Accordion(
                          type: AccordionType.old,
                          title:
                              "You wanna know why I do this? I wanna know why you don't",
                          content:
                              "You wanna know why I do this? I wanna know why you don't",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Accordion(
                          type: AccordionType.old,
                          title:
                              "You wanna know why I do this? I wanna know why you don't",
                          content:
                              "You wanna know why I do this? I wanna know why you don't",
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
          ],
        ),
      ),
    );
  }
}
