import 'package:flutter/material.dart';
import 'package:flutteradmin/resources/models/menu_model.dart';

class SideMenuItem extends StatefulWidget {
  final MenuModel value;
  const SideMenuItem({super.key, required this.value});

  @override
  State<SideMenuItem> createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem> {
  MenuModel get value => widget.value;
  bool showSubMenu = false;
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onHover: (_) {
            onHover = _;
            setState(() {});
          },
          onTap: () {
            showSubMenu = !showSubMenu;
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            width: width,
            height: 46,
            decoration: BoxDecoration(
              color: onHover
                  ? Colors.grey[100]!.withOpacity(0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: value.icon != null
                      ? Icon(
                          value.icon,
                          color: Colors.white,
                        )
                      : null,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                if ((value.subMenu ?? []).isNotEmpty)
                  Icon(
                    showSubMenu
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ),
        if (showSubMenu)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Column(
              children: value.subMenu!.map((value) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    height: 40,
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value.name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
