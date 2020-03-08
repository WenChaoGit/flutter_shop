import 'package:flutter/material.dart';

class IndexProvider with ChangeNotifier{
  int _currentTabIndex = 0;

  int get currentTabIndex => _currentTabIndex;

  void changeCurrentTabIndex(int index){
    _currentTabIndex = index;
    notifyListeners();
  }
}