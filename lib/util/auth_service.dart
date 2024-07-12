import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  bool _authenticated = false;

  int index = 0;

  bool get authenticated => _authenticated;

  set authenticated(bool value) {
    _authenticated = value;
    notifyListeners();
  }
}
