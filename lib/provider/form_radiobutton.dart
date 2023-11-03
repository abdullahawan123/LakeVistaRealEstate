import 'package:flutter/foundation.dart';
import 'package:lakevistaapp/screen_interfaces/form_screen.dart';

class FormRadioButtonProvider with ChangeNotifier {
  PropertySelection _selection = PropertySelection.residential;

  PropertySelection get selection => _selection;

  void setSelection(PropertySelection value) {
    _selection = value;
    notifyListeners();
  }
}
