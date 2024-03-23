import 'package:flutter/material.dart';

enum ButtonsType { buttons1, buttons2, buttons3, buttons4 }

class Buttons extends StatefulWidget {
  final IconData? icon;
  final Function()? onTap;
  final Color color;
  final String? text;
  final ButtonsType type;
  final TextStyle? textStyle;
  final Color? iconColor;
  const Buttons({
    super.key,
    this.icon,
    this.onTap,
    this.color = Colors.deepPurple,
    this.text,
    this.type = ButtonsType.buttons1,
    this.textStyle,
    this.iconColor,
  });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  ButtonStyle? get buttonStyle => ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              widget.type == ButtonsType.buttons1 ||
                      widget.type == ButtonsType.buttons2
                  ? 4
                  : 100,
            ),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            color: widget.type == ButtonsType.buttons1 ||
                    widget.type == ButtonsType.buttons3
                ? Colors.transparent
                : widget.color,
            width: 1,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          widget.type == ButtonsType.buttons1 ||
                  widget.type == ButtonsType.buttons3
              ? widget.color
              : Colors.transparent,
        ),
        elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return 16;
          return null;
        }),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(100, 60)),
      );

  Widget get label => Text(
        widget.text ?? "",
        style: widget.textStyle ??
            TextStyle(
              color: widget.type == ButtonsType.buttons1 ||
                      widget.type == ButtonsType.buttons3
                  ? Colors.white
                  : widget.color,
            ),
      );

  Widget get icon => Icon(
        widget.icon!,
        color: widget.iconColor ??
            (widget.type == ButtonsType.buttons1 ||
                    widget.type == ButtonsType.buttons3
                ? Colors.white
                : widget.color),
      );
  @override
  Widget build(BuildContext context) {
    if (widget.type == ButtonsType.buttons1 ||
        widget.type == ButtonsType.buttons3) {
      if (widget.icon != null) {
        return ElevatedButton.icon(
          style: buttonStyle,
          onPressed: widget.onTap,
          icon: icon,
          label: label,
        );
      }
      return ElevatedButton(
        onPressed: widget.onTap,
        style: buttonStyle,
        child: label,
      );
    }
    if (widget.icon != null) {
      return OutlinedButton.icon(
        style: buttonStyle,
        onPressed: widget.onTap,
        icon: icon,
        label: label,
      );
    }
    return OutlinedButton(
      style: buttonStyle,
      onPressed: widget.onTap,
      child: label,
    );
  }
}
