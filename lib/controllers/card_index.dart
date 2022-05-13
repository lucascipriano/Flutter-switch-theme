import 'package:flutter/foundation.dart';

class PageControllerApp extends ChangeNotifier {
  int _index = 0;
  int get index => _index;

  setPageIndex(int value) {
    _index = value;
    print(_index.toString());
    notifyListeners();
  }
}
