import 'dart:convert';
import '../sign_up_model.dart';
import 'package:http/http.dart' as http;

class UserRepositoryRegister {
  Future<bool> postData(UserData userData) async {
    const apiUrl = 'https://remotepatient.onrender.com/api/register';
    print(userData.email);
    print(userData.password);
    print(userData.fullName);
    // Your API endpoint
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(userData.toJson()),
      );
      final responseData = json.decode(response.body);
      print(responseData);
      if (response.statusCode == 200) {
        print('Data posted successfully');
      } else {
        throw Exception('Failed to post data: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Exception occurred: $e');
    }
    return true;
  }
}
