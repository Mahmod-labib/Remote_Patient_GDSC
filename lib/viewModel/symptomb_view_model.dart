import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdcs_hackathon/model/cubit/symtomb_input.dart';

class SymptomInputCubit extends Cubit<SymptomInputModel> {
  SymptomInputCubit() : super(SymptomInputModel());

  void setHeadache(bool value) {
    emit(state..headache = value);
  }

  void setFatigue(bool value) {
    emit(state..fatigue = value);
  }

  void setFever(bool value) {
    emit(state..fever = value);
  }

  void setChills(bool value) {
    emit(state..chills = value);
  }

  void setMuscleAches(bool value) {
    emit(state..muscleAches = value);
  }

  void setSeverity(double value) {
    emit(state..severity = value);
  }

  void setFeeling(String value) {
    emit(state..feeling = value);
  }
}
