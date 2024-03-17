import 'dart:convert';

import '../sign_up_model.dart';
import 'package:http/http.dart'as http;
class UserRepository {
  Future<void> postData(UserData userData) async {
    const apiUrl = 'https://remotepatient.onrender.com/api/register'; // Your API endpoint
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(userData.toJson()),
    );

    if (response.statusCode == 200) {
      print('Data posted successfully');
    } else {
      throw Exception('Failed to post data');
    }
  }
}