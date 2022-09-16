import 'package:flutter/material.dart';

class botoomnavigationbar extends ChangeNotifier{

  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }
}