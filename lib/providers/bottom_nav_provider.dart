import 'package:flutter/material.dart' show ChangeNotifier;

class BottomNavProvider extends ChangeNotifier {
  int _activeIndexProgress = 0;
  int get activeIndexProgress => _activeIndexProgress;
  void newIndex(int index) {
    _activeIndexProgress = index;
    notifyListeners();
  }
}
