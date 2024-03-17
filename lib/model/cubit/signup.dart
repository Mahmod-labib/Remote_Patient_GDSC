import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdcs_hackathon/viewModel/signup_view_model.dart';

class SignUpFormCubit extends Cubit<bool> {
  final SignUpViewModel viewModel;

  SignUpFormCubit(this.viewModel) : super(false);

  void setFormValid(bool isValid) {
    emit(isValid);
  }

  void toggleTermsAccepted(bool? value) {
    viewModel.toggleTermsAccepted(value);
  }

  void toggleTimeDilation(bool? value) {
    viewModel.toggleTimeDilation(value);
  }
}


