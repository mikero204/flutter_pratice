import 'dart:math';

import 'package:flutter/material.dart';

class Utils {
  static Color randomColor() {
    Random _random = Random();
    Color color = Color.fromARGB(
        255, _random.nextInt(255), _random.nextInt(255), _random.nextInt(255));
    return color;
  }
}
