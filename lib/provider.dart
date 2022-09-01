import 'package:flutter/cupertino.dart';

class homeprovider extends ChangeNotifier{
   bool isCheck = true;
   bool check = false;
   void switc(value){
     isCheck=value;
   }

   void swith(valu){
     check=valu;
   }
}