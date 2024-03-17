import 'package:flutter/material.dart';

class VerificationViewModel extends ChangeNotifier {
  String _email = '';
  String get email => _email;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void codeCompleted(String value) {
    print('Verification code completed: $value');
  }

  void codeEditing(bool value) {

    if (value) {
      print('User started editing verification code');
    } else {
      print('User stopped editing verification code');
    }
  }
}
