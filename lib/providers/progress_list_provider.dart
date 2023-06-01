import 'package:flutter/material.dart' show ChangeNotifier;

class ProgressProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void newIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
