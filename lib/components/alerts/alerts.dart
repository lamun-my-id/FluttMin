import 'package:flutter/material.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

enum AlertType { error, success, warning, info }

class Alerts extends StatefulWidget {
  final String? title;
  final String? content;
  final AlertType type;
  const Alerts({
    super.key,
    this.type = AlertType.info,
    this.title,
    this.content,
  });

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  AlertType get type => widget.type;

  Color get color => type == AlertType.error
      ? Colors.red
      : type == AlertType.info
          ? Colors.blue
          : type == AlertType.warning
              ? Colors.orange
              : type == AlertType.success
                  ? Colors.green
                  : Colors.white;

  IconData get icon => type == AlertType.error
      ? Icons.close_outlined
      : type == AlertType.info
          ? Icons.info_outlined
          : type == AlertType.warning
              ? Icons.warning_outlined
              : type == AlertType.success
                  ? Icons.check_outlined
                  : Icons.add;

  @override
  Widget build(BuildContext context) {
    double width = context.width();
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: color,
            width: 8,
          ),
        ),
        color: color.withOpacity(0.1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: color,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: width,
                  constraints: const BoxConstraints(
                    minHeight: 30,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.title ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: width,
                  alignment: Alignment.centerLeft,
                  child: Text(widget.content ?? ""),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
