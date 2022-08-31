import 'package:flutter/foundation.dart';

class SliderModelProvider with ChangeNotifier {
  double _range = 0.5;
  double get range => _range;

  setOpacity(val) {
    _range = val;
    notifyListeners();
  }
}
