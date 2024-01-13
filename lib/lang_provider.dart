import 'package:flutter/cupertino.dart';

class LangProvider extends ChangeNotifier{
  bool _isItemSelected = false;

  void isItemSelected(bool value) {
    notifyListeners();
    _isItemSelected = value;
  }

  bool getItemSelected(){
    return _isItemSelected;
  }

  void langChanged(){
    notifyListeners();
  }


}