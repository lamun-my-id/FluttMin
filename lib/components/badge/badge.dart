import 'package:flutter/material.dart';

enum BadgeType { badge1, badge2, badge3, badge4 }

class Badge extends StatefulWidget {
  final String value;
  final Color color;
  final BadgeType type;
  const Badge(
    this.value, {
    super.key,
    this.color = Colors.deepPurple,
    this.type = BadgeType.badge1,
  });

  @override
  State<Badge> createState() => _BadgeState();
}

class _BadgeState extends State<Badge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color:
            widget.type == BadgeType.badge1 || widget.type == BadgeType.badge3
                ? widget.color
                : Colors.transparent,
        border: Border.all(
          color:
              widget.type == BadgeType.badge1 || widget.type == BadgeType.badge3
                  ? Colors.transparent
                  : widget.color,
        ),
        borderRadius: BorderRadius.circular(
            widget.type == BadgeType.badge1 || widget.type == BadgeType.badge2
                ? 4
                : 100),
      ),
      child: Text(
        widget.value,
        style: TextStyle(
          color:
              widget.type == BadgeType.badge1 || widget.type == BadgeType.badge3
                  ? Colors.white
                  : widget.color,
        ),
      ),
    );
  }
}
