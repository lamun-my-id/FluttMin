import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  width() {
    MediaQuery.of(this).size.width;
  }

  height() {
    MediaQuery.of(this).size.height;
  }

  isDesktop() {
    if ((height() >= 768 && width() >= 768)) {
      return true;
    }
    return false;
  }
}
