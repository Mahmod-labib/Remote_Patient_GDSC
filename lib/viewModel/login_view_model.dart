
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/cubit/login_cubit.dart';
import '../model/login.dart';
import '../model/repo/login.dart';

class LoginViewModel extends Cubit<User> {
  LoginViewModel() : super(User(email: '', password: ''));

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userRepository = UserRepository();
  void handleLogin() {
    final email = emailController.text;
    final password = passwordController.text;
    final loginModel = LoginModel(email: email, password: password);

    userRepository.login(loginModel)
        .then((loggedIn) {
      if (loggedIn) {
        // Navigate to next screen on successful login
        print("logged in successfully");
      } else {
        // Show error message
        print("error with login");

      }
    })
        .catchError((error) {
      // Show error message
      print(error.toString());
    });
}}
