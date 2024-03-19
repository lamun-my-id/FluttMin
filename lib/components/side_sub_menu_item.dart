import 'package:flutter/material.dart';
import 'package:flutteradmin/resources/models/sub_menu_model.dart';

class SideSubMenuItem extends StatefulWidget {
  final SubMenuModel value;
  const SideSubMenuItem({super.key, required this.value});

  @override
  State<SideSubMenuItem> createState() => _SideSubMenuItemState();
}

class _SideSubMenuItemState extends State<SideSubMenuItem> {
  SubMenuModel get value => widget.value;
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, value.navigateTo);
      },
      onHover: (_) {
        onHover = _;
        setState(() {});
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        height: 40,
        width: width,
        alignment: Alignment.centerLeft,
        child: Text(
          value.name,
          style: TextStyle(
            fontSize: 16,
            color: onHover ? Colors.white : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
