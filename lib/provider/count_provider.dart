import 'package:flutter/material.dart';

//changeotifier setstate ka kaam krta hai aur iske paas global context hota hai
class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void setCount() {
    _count++;
    notifyListeners();
  }
}
