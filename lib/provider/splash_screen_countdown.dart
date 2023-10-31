import 'package:flutter/foundation.dart';

class SplashCountdownProvider with ChangeNotifier {
  double _value = 0.0;

  double get value => _value;

  void updateValue(double newValue) {
    _value = newValue;
    notifyListeners();
  }
}
