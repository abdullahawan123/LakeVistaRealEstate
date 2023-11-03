import 'package:flutter/foundation.dart';

class TermCheckBoxProvider with ChangeNotifier{
  bool _isCheck = false ;

  bool get isCheck => _isCheck ;

  void selectCheckBox(bool value){
    _isCheck = value ;
    notifyListeners();
  }
}