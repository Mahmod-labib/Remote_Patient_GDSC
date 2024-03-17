// api_service.dart

import 'package:gdcs_hackathon/model/heart_attack_check.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiService {
  static Future<void> sendDataToApi(HeartAttackData data) async {
    final url = 'https://remotepatient.onrender.com/api/sendData/:id'; // Update with your API endpoint
    final response = await http.post(Uri.parse(url), body: data.toJson());
    if (response.statusCode == 200) {
      // Data sent successfully
      print('Data sent successfully');
    } else {
      // Error occurred while sending data
      print('Error occurred while sending data');
    }
  }
}
