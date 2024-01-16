import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constans.dart';

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
    await preferences.setInt(Constants.FAV_MEAL, index);
  }

  Future<int?> getFavourite() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(preferences.containsKey(Constants.FAV_MEAL)){
     return preferences.getInt(Constants.FAV_MEAL);
    }
    return null;
  }

  setFavList(List<int> indexes) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setStringList(Constants.FAV_MEALS, indexes.map((e) => e.toString()).toList());
    notifyListeners();
  }

  Future<List<int>> getFavList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? res = prefs.getStringList(Constants.FAV_MEALS);
    if (res != null) {
      return res.map((e) => int.parse(e)).toList();
    }
    return List.empty();
  }
}
