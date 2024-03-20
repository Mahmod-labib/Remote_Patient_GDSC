import 'package:flutter/material.dart';

import '../model/repo/signUp.dart';
import '../model/sign_up_model.dart';

class SignUpViewModel extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();



  bool isTimeDilationChecked = false;
  bool termsAccepted = false;

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your full name';
    }
    return null;
  }

  String? validateEmailAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address';
    }
    // You can add more validation logic for email format if needed
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    // You can add more validation logic for password strength if needed
    return null;
  }

  String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  void toggleTimeDilation(bool? value) {
    isTimeDilationChecked = value ?? false;
    notifyListeners();
  }

  void toggleTermsAccepted(bool? value) {
    termsAccepted = value ?? false;
    notifyListeners();
  }

  bool validateForm() {
    return formKey.currentState!.validate();
  }
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();



  void handleSubmit()  {
    final name=nameController.text;
    final email=emailController.text;
    final password=passwordController.text;
    final userData = UserData(fullName: name, email: email , password: password);

    final userRepository = UserRepositoryRegister();

    userRepository.postData(userData);


  }
}
