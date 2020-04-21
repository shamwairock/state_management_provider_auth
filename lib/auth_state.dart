import 'package:flutter/foundation.dart';

class AuthState with ChangeNotifier{
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

  void login(){
    _loggedIn = true;
    notifyListeners();
  }

  void logout(){
    _loggedIn = false;
    notifyListeners();
  }
}