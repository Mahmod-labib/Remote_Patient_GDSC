// heart_attack_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../heart_attack_check.dart';


class HeartAttackCheckCubit extends Cubit<HeartAttackData> {
  HeartAttackCheckCubit() : super(HeartAttackData(
    age: "",
    sex: "",
    chestPainType: "",
    restingBloodPressure: "",
    serumCholestoral: "",
    fastingBloodPressure: "",
    restingElectrocardiographicResults: "",
    maxHeartRateAchieved: "",
    exerciseInducedAngina: "",
    oldPeak: "",
    slopeOfPeakExerciseSTSegme: "",
    numberOfMajorVessels: "",
    thalValue: "",
  ));

  Future<void> sendDataToApi(HeartAttackData data) async {
    const url = 'https://remotepatient.onrender.com/api/sendData/:id';
    final response = await http.post(Uri.parse(url),

        body: data.toJson());
    if (response.statusCode == 200) {
      // Data sent successfully
      print('Data sent successfully');
    } else {
      // Error occurred while sending data
      print('Error occurred while sending data');
    }
  }

  void updateData(HeartAttackData newData) {
    emit(newData);
    sendDataToApi(newData); // Call the API whenever data is updated
  }
}
