import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class ThemeProvider with ChangeNotifier {
  bool _getThemeData = false;

  bool get getThemeData => _getThemeData;

  set setThemeData(bool value) {
    _getThemeData = value;
    setTheme(value);
    notifyListeners();
  }

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("alamin", value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool("alamin") ?? false;
  }
}
