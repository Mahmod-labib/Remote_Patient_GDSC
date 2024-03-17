import 'dart:convert';
import 'package:gdcs_hackathon/model/login.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<bool> login(LoginModel loginModel) async {
    const apiUrl = 'https://remotepatient.onrender.com/api/login'; // Your API endpoint
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(loginModel.toJson()),
    );

    if (response.statusCode == 200) {
      print("login success");
      return true;
    } else {
      print("login failed");
      return false;
    }
  }
}