// heart_attack_model.dart

class HeartAttackData {
  final String age;
  final  String sex;
  final String chestPainType;
  final String restingBloodPressure;
  final String serumCholestoral;
  final String fastingBloodPressure;
  final String restingElectrocardiographicResults;
  final String maxHeartRateAchieved;
  final String exerciseInducedAngina;
  final String oldPeak;
  final String slopeOfPeakExerciseSTSegme;
  final String numberOfMajorVessels;
  final String thalValue;

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
      'cp': chestPainType,
      'trestbps': restingBloodPressure,
      'chol': serumCholestoral,
      'fbs': fastingBloodPressure,
      'restecg': restingElectrocardiographicResults,
      'thalach': maxHeartRateAchieved,
      'exang': exerciseInducedAngina,
      'oldpeak': oldPeak,
      'slope': slopeOfPeakExerciseSTSegme,
      'ca': numberOfMajorVessels,
      'thal': thalValue,
    };
  }
}
