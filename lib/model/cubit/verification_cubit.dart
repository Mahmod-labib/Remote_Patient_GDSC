import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdcs_hackathon/model/verification_code_model.dart';
import '../../viewModel/verification_view_model.dart';

abstract class VerificationState {}

class VerificationInitial extends VerificationState {}

class VerificationLoading extends VerificationState {}

class VerificationSuccess extends VerificationState {}

class VerificationFailure extends VerificationState {
  final String error;

  VerificationFailure(this.error);
}

class VerificationCubit extends Cubit<VerificationState> {
  final VerificationViewModel viewModel;

  VerificationCubit(this.viewModel) : super(VerificationInitial());

  void submitVerificationCode(String code) async {
    emit(VerificationLoading());

    try {
      final verificationCodeModel = VerificationCodeModel(
        emailAddress: viewModel.email,
        verificationCode: code,
      );

      emit(VerificationSuccess());
    } catch (e) {
      emit(VerificationFailure(e.toString()));
    }
  }
}
