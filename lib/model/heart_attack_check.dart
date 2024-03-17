// heart_attack_model.dart

class HeartAttackData {
  String age;
  String sex;
  String chestPainType;
  String restingBloodPressure;
  String serumCholestoral;
  String fastingBloodPressure;
  String restingElectrocardiographicResults;
  String maxHeartRateAchieved;
  String exerciseInducedAngina;
  String oldPeak;
  String slopeOfPeakExerciseSTSegme;
  String numberOfMajorVessels;
  String thalValue;

  HeartAttackData({
    required this.age,
    required this.sex,
    required this.chestPainType,
    required this.restingBloodPressure,
    required this.serumCholestoral,
    required this.fastingBloodPressure,
    required this.restingElectrocardiographicResults,
    required this.maxHeartRateAchieved,
    required this.exerciseInducedAngina,
    required this.oldPeak,
    required this.slopeOfPeakExerciseSTSegme,
    required this.numberOfMajorVessels,
    required this.thalValue,
  });

  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'sex': sex,
      'chestPainType': chestPainType,
      'restingBloodPressure': restingBloodPressure,
      'serumCholestoral': serumCholestoral,
      'fastingBloodPressure': fastingBloodPressure,
      'restingElectrocardiographicResults': restingElectrocardiographicResults,
      'maxHeartRateAchieved': maxHeartRateAchieved,
      'exerciseInducedAngina': exerciseInducedAngina,
      'oldPeak': oldPeak,
      'slopeOfPeakExerciseSTSegme': slopeOfPeakExerciseSTSegme,
      'numberOfMajorVessels': numberOfMajorVessels,
      'thalValue': thalValue,
    };
  }
}
