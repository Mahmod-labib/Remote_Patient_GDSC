import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdcs_hackathon/view/login_screen.dart';
import 'package:gdcs_hackathon/view/verification_screen.dart';
import 'package:gdcs_hackathon/viewModel/verification_view_model.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';
import 'package:gdcs_hackathon/widget/custom_text_form_field.dart';

import '../model/cubit/signup.dart';
import '../viewModel/signup_view_model.dart';
import '../widget/custom_checkbox_with_text.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(80.0.h),
        child: AppBar(
          centerTitle:true,
          title: Text('Create your Account',style: TextStyle(fontSize: 22.sp , fontWeight: FontWeight.w700
            , color: const Color(0xffFFFFFF),
            fontFamily: "Inter",
          ),),
          elevation: 0,
          backgroundColor: const Color(0xffF8C0C8),
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.sp),
              bottomRight: Radius.circular(40.sp),
            ),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => SignUpFormCubit(SignUpViewModel()), // Provide the view model instance
        child: Builder(
          builder: (context) {
            final signUpFormCubit = BlocProvider.of<SignUpFormCubit>(context);
            return  Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Form(
                  key: signUpFormCubit.viewModel.formKey, // Access form key from SignUpFormCubit's viewModel
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      CustomTextFormField(
                        title: "Full Name",
                        controller: signUpFormCubit.viewModel.nameController,
                        validator: signUpFormCubit.viewModel.validateFullName,
                      ),
                      SizedBox(height: 3.h),
                      CustomTextFormField(
                        title: "Email Address",
                        controller: signUpFormCubit.viewModel.emailController,
                        validator: signUpFormCubit.viewModel.validateEmailAddress,
                      ),
                      SizedBox(height: 3.h),
                      CustomTextFormField(
                        title: "Password",
                        controller: signUpFormCubit.viewModel.passwordController,
                        obscureText: true,
                        validator: signUpFormCubit.viewModel.validatePassword,
                      ),
                      SizedBox(height: 3.h),
                      CustomTextFormField(
                        title: "Confirm Password",
                        controller: signUpFormCubit.viewModel.confirmPasswordController,
                        obscureText: true,
                        validator: (value) => signUpFormCubit.viewModel.validateConfirmPassword(value, signUpFormCubit.viewModel.passwordController.text),
                      ),
                      SizedBox(height: 3.h),
                      const CustomCheckboxWithText(
                        text: "By continuing you are agreeing to our terms & conditions and our privacy policies",
                      ),
                      SizedBox(height: 8.h),
                      BlocBuilder<SignUpFormCubit, bool>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                text: "Sign Up",
                                onPressed: () async{
                                  if (signUpFormCubit.viewModel.validateForm() && signUpFormCubit.viewModel.termsAccepted) {
                                     signUpFormCubit.setFormValid(true);
                                    await signUpFormCubit.viewModel.handleSubmit();
                                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>VerificationScreen(viewModel: VerificationViewModel())));

                                    // Proceed with your logic here
                                  } else {
                                    signUpFormCubit.setFormValid(false);
                                  }

                                },
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 5.h),


                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                             SizedBox(
                             width:    74.w  ,
                                child: const Divider(color:Color(0xffCACACA),)
                            ),
                            SizedBox(width: 5.w,),

                            Text("OR" , style: TextStyle(fontSize: 14.sp , fontFamily: "Inter" ,
                                color: const Color(0xff000000) , fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 5.w,),

                             SizedBox(
                              width: 74.w,
                                child: const Divider(color:Color(0xffCACACA),)
                            ),
                          ]
                      ),

                      SizedBox(height: 5.h),
                      BlocBuilder<SignUpFormCubit, bool>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                text: "Continue with Google",
                                onPressed: () {
                                  if (signUpFormCubit.viewModel.validateForm() && signUpFormCubit.viewModel.termsAccepted) {
                                    signUpFormCubit.setFormValid(true);
                                    // Proceed with your logic here
                                  } else {
                                    signUpFormCubit.setFormValid(false);
                                  }
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 7.h),

                      Row(
                         mainAxisAlignment:MainAxisAlignment.center,
                         children: [
                        const Text("Already have an Account? " , style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Inter",
                        ),),
                        InkWell(
                          onTap:() {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginView()),
                            );
                          },
                          child: const Text("Login",style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff6C63FF),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Inter",
                          ),),
                        ),
                      ],)
                    ],
                  ),
                ));

          },
        ),
      ),
    );
  }
}
