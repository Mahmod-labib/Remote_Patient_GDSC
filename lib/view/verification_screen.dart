import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gdcs_hackathon/model/repo/heart_attack_repo.dart';
import 'package:gdcs_hackathon/model/sign_up_model.dart';
import 'package:gdcs_hackathon/view/home.dart';
import 'package:gdcs_hackathon/view/login_screen.dart';
import 'package:gdcs_hackathon/viewModel/signup_view_model.dart';
import 'package:gdcs_hackathon/viewModel/verification_view_model.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';

import '../model/cubit/verification_cubit.dart';

class VerificationScreen extends StatelessWidget {
  final SignUpViewModel viewModel=SignUpViewModel();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(80.0.h),
        child: AppBar(
          centerTitle: true,
          title:  Text(
            'Verification Code',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
            ),
          ),
          elevation: 0,
          backgroundColor: const Color(0xffF8C0C8),
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40).r,
              bottomRight: Radius.circular(40).r,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
               SizedBox(height: 60.h),
              const Text(
                "Please type the verification code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
               SizedBox(height: 3.h),
              Text(
                "sent to ${viewModel.emailController.text}",
                style:  TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
               SizedBox(height: 35.h),
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
                onCompleted: (String code) {}, onEditing: (bool value) {},
                // Implement onEditing if needed
              ),
              const SizedBox(height: 70),
              CustomButton(text: "Send", onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginView()));
              }),

               Text(
                "Resend code",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6C63FF),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}