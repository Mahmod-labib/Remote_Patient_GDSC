// heart_attack_view_model.dart

import 'package:flutter/material.dart';
import 'package:gdcs_hackathon/model/repo/heart_attack_repo.dart';

import '../model/heart_attack_check.dart';

class HeartAttackCheckViewModel {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController sexController = TextEditingController();
  final TextEditingController chestPainTypeController = TextEditingController();
  final TextEditingController restingBloodPressureController = TextEditingController();
  final TextEditingController serumCholestoralController = TextEditingController();
  final TextEditingController fastingBloodPressureController = TextEditingController();
  final TextEditingController restingElectrocardiographicResultsController = TextEditingController();
  final TextEditingController maxHeartRateAchievedController = TextEditingController();
  final TextEditingController exerciseInducedAnginaController = TextEditingController();
  final TextEditingController oldPeakController = TextEditingController();
  final TextEditingController slopeOfPeakExerciseSTSegmeController = TextEditingController();
  final TextEditingController numberOfMajorVesselsController = TextEditingController();
  final TextEditingController thalValueController = TextEditingController();

  HeartAttackData getData() {
    return HeartAttackData(
      age: ageController.text,
      sex: sexController.text,
      chestPainType: chestPainTypeController.text,
      restingBloodPressure: restingBloodPressureController.text,
      serumCholestoral: serumCholestoralController.text,
      fastingBloodPressure: fastingBloodPressureController.text,
      restingElectrocardiographicResults: restingElectrocardiographicResultsController.text,
      maxHeartRateAchieved: maxHeartRateAchievedController.text,
      exerciseInducedAngina: exerciseInducedAnginaController.text,
      oldPeak: oldPeakController.text,
      slopeOfPeakExerciseSTSegme: slopeOfPeakExerciseSTSegmeController.text,
      numberOfMajorVessels: numberOfMajorVesselsController.text,
      thalValue: thalValueController.text,
    );

  }



}
