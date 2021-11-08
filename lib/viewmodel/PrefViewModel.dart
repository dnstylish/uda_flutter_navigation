import 'package:flutter/material.dart';

class PrefViewModel extends ChangeNotifier {

  int tab = 0;

  void changeTab(int index) {

    tab = index;
    notifyListeners();

  }

}