import 'package:flutter/material.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

enum AccordionType { normal, old }

class Accordion extends StatefulWidget {
  final String? title;
  final String? content;
  final AccordionType type;
  const Accordion({
    super.key,
    this.title,
    this.content,
    this.type = AccordionType.normal,
  });

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool showDetail = false;

  @override
  Widget build(BuildContext context) {
    double width = context.width();
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
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
          InkWell(
            onTap: () {
              showDetail = !showDetail;
              setState(() {});
            },
            child: Row(
              children: [
                if (widget.type == AccordionType.normal)
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200]!,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          showDetail
                              ? Icons.keyboard_arrow_up_outlined
                              : Icons.keyboard_arrow_down_outlined,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                Expanded(
                  child: Text(
                    widget.title ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                if (widget.type == AccordionType.old)
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Icon(
                          showDetail ? Icons.remove : Icons.add,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
              ],
            ),
          ),
          if (showDetail)
            Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    if (widget.type == AccordionType.normal)
                      const Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    Expanded(
                      child: Text(
                        widget.content ?? "",
                        style: const TextStyle(
                          // fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
