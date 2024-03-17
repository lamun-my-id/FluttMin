import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double width() {
    return MediaQuery.of(this).size.width;
  }

  double height() {
    return MediaQuery.of(this).size.height;
  }

  bool isDesktop() {
    if ((height() >= 768 && width() >= 768)) {
      return true;
    }
    return false;
  }

  double margin({int excuse = 0}) {
    double margin = 0;
    if ((width() - excuse) > 1280) {
      margin = (((width() - excuse) - 1280) / 2);
    }
    return margin;
  }
}
