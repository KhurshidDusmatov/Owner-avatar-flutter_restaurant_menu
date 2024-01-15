import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainProvider extends ChangeNotifier {
  bool _isItemSelected = false;
  int _selectedItemIndex = 0;

  void selectedItemIndex(int value) {
    notifyListeners();
    selectedItemIndex(value);
  }

  int getSelectedItemIndex() {
    return _selectedItemIndex;
  }

  void isItemSelected(bool value) {
    notifyListeners();
    _isItemSelected = value;
  }

  bool getItemSelected() {
    return _isItemSelected;
  }

  void langChanged() {
    notifyListeners();
  }

  setFavourite(int index) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt("fav_meal", index);
  }

  Future<int?> getFavourite() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(preferences.containsKey("fav_meal")){
     return preferences.getInt("fav_meal");
    }
    return null;
  }


}
