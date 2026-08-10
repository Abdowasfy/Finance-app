import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  getAllHomeContent({email, password}) {
    notifyListeners();
  }
}
