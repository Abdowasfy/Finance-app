import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isLogin = false;

  bool get isLoggedIn => isLogin;

  Login({email,password}){
     notifyListeners();
  }
  


}
