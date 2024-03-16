export 'package:flutteradmin/resources/models/sub_menu_model.dart';

import 'package:flutter/material.dart';
import 'package:flutteradmin/resources/models/sub_menu_model.dart';

class MenuModel {
  IconData? icon;
  String name;
  String navigateTo;
  List<SubMenuModel>? subMenu;
  MenuModel(
      {this.icon, required this.name, required this.navigateTo, this.subMenu});
}
