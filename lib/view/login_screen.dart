import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdcs_hackathon/view/home.dart';
import 'package:gdcs_hackathon/view/signup.dart';
import 'package:gdcs_hackathon/viewModel/login_view_model.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';
import '../widget/custom_textformfield_login.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          'LogIn',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFFFFFF),
            fontFamily: "Inter",
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffF8C0C8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.sp),
            bottomRight: Radius.circular(40.sp),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginViewModel loginViewModel=LoginViewModel();


  final FocusNode _focusNodeEmail=FocusNode();
  final FocusNode _focusNodePassword=FocusNode();
   LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.h),
        Text(
          'Welcome Back!',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xffD3BBDD),
            fontFamily: "Inter",
          ),
        ),
        SizedBox(height: 32.h),
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/images/Group 2.svg",
            width: 290.w,
            height: 203.h,
          ),
        ),
        LoginCustomTextFormField(
          hintText: "Email",
          controller:loginViewModel.emailController ,
          focusNode: _focusNodeEmail,
        ),
        SizedBox(height: 9.h),
        LoginCustomTextFormField(
          hintText: "Password",
          obscureText: true,
          controller:loginViewModel.passwordController ,
          focusNode: _focusNodePassword,
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Forget Password?",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xffD3BBDD),
                fontFamily: "Inter",
              ),
            )
          ],
        ),
        SizedBox(height: 20.h),
        CustomButton(
          text: "Login",
          onPressed: () {
            loginViewModel.handleLogin();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
            // Handle login action
          },
        ),
        SizedBox(height: 8.h,),

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

        SizedBox(height: 8.h),
        CustomButton(text: "Continue with Google", onPressed: (){}),

        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const Text("Don’t Have Account? " , style: TextStyle(
              fontSize: 14,
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Inter",
            ),),
            InkWell(
              onTap:() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  SignUpView()),
                );
              },
              child: const Text("SignUp",style: TextStyle(
                fontSize: 14,
                color: Color(0xff6C63FF),
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
              ),),
            ),
          ],)      ],
    );
  }
}
