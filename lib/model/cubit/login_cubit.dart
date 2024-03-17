import 'package:bloc/bloc.dart';

class LoginCubit extends Cubit<User> {
  LoginCubit() : super(User(email: '', password: ''));

  void updateUser(User user) {
    emit(user);
  }
}

class User {
  final String email;
  final String password;

  User({required this.email, required this.password});

  User copyWith({String? email, String? password}) {
    return User(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

