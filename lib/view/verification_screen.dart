import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gdcs_hackathon/viewModel/verification_view_model.dart';

import '../model/cubit/verification_cubit.dart';

class VerificationScreen extends StatelessWidget {
  final VerificationViewModel viewModel;

  const VerificationScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          centerTitle: true,
          title: const Text(
            'Verification Code',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
            ),
          ),
          elevation: 0,
          backgroundColor: const Color(0xffF8C0C8),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text(
              "Please type the verification code",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "sent to ${viewModel.email}",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            const SizedBox(height: 35),
            VerificationCode(
              keyboardType: TextInputType.number,
              underlineColor: const Color(0xff6C63FF),
              cursorColor: const Color(0xff6C63FF),
              fillColor: const Color(0xffECF0F1),
              fullBorder: true,
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onCompleted: (String code) {
                context.read<VerificationCubit>().submitVerificationCode(code);
              }, onEditing: (bool value) {  },
              // Implement onEditing if needed
            ),
            const SizedBox(height: 70),
            const Text(
              "Resend code",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff6C63FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}