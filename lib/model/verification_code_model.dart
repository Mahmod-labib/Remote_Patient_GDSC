class VerificationCodeModel {
  final String emailAddress;
  final String verificationCode;

  VerificationCodeModel({required this.emailAddress, required this.verificationCode});

  Map<String, dynamic> toJson() {
    return {

      'email': emailAddress,
      'verificationCode':verificationCode,
    };
  }

}