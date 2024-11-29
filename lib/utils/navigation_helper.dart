import 'package:flutter/material.dart';

class NavigationHelper {
  static void popWithResult(BuildContext context, bool result) {
    Navigator.pop(context, result);
  }
}