

import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier{

  int value = 0;

  incrementCounter(){
    value++;
    notifyListeners();
  }
  decrementCounter(){
    value--;
    notifyListeners();
  }

}