import 'package:flutter/material.dart';

class stepper_Provider extends ChangeNotifier{
  int i=0;

  void add(){
    if(i<2)
    {
      i++;
    }
    notifyListeners();
  }

  void decrement(){
    if(i>0){
      i--;
    }
    notifyListeners();
  }

  void stepClick(int i){
    this.i=i;
    notifyListeners();
  }
}