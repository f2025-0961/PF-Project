import 'package:flutter/material.dart';

class ThemeViewmodel extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void updateTheme(bool val) {
    _isDark = val;
    notifyListeners();
  }

  void setLightMode() {
    _isDark = false;
    notifyListeners();
  }
}
