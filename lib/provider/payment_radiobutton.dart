import 'package:flutter/foundation.dart';

class PaymentMethodProvider with ChangeNotifier {
  String _option = '' ;

  String get option => _option ;

  void selectedOption(String value){
    _option = value ;
    notifyListeners();
  }
}