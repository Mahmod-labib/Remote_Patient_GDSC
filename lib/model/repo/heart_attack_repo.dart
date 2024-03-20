// api_service.dart

import 'package:gdcs_hackathon/model/heart_attack_check.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiService {
   Future<bool> sendDataToApi(HeartAttackData data , int id) async {
     print(data.age);
     print(data.chestPainType);
    final url = 'https://remotepatient.onrender.com/api/sendData/7'; // Update with your API endpoint
    final response = await http.post(Uri.parse(url), body: data.toJson());
     final responseData = json.decode(response.body);
     print(responseData);
    if (response.statusCode == 200) {
      // Data sent successfully
      print('Data sent successfully');
    } else {
      // Error occurred while sending data
      print('Error occurred while sending data');
    }
    return true;
  }
}
