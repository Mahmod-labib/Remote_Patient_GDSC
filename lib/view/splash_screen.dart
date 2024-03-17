import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdcs_hackathon/view/login_screen.dart';

import '../model/cubit/splash_screen_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashLoaded) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>  const LoginView(),
              ),
            );
          }
        },
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff7F7BC0),
                  Color(0xffC1C0CCCC),
                  Color(0xffD4D3E5CC),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 130.h,),
                Text("Welcome to" , style: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.w700
                , color: const Color(0xffFFFFFF),
                  fontFamily: "Inter",
                ),),
                Text("VitalLink Remote Care" , style: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.w700
                  , color: const Color(0xffFFFFFF),
                  fontFamily: "Inter",

                ),),
                
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    top: 10,
                    right: 12.w,
                    bottom: 60.h

                  ),
                  child: SvgPicture.asset(
                    "assets/images/undraw_medical_research_qg4d 1 (1).svg",
                    width: 404.w,
                    height: 273.21.h,
                  ),
                ),
                Text("Empowering Healthcare," ,style: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.w700
                  , color: const Color(0xffFFFFFF),
                  fontFamily: "Inter",
                ),),
                Text("One Beat at a Time" , style: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.w700
                  , color: const Color(0xffFFFFFF),
                  fontFamily: "Inter",
                ),),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
