import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdcs_hackathon/view/heart_attack_risk_checker.dart';
import 'package:gdcs_hackathon/view/symptom_input.dart';
import 'package:gdcs_hackathon/viewModel/heart_attack_view_model.dart';

import '../model/cubit/heart_attack_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0.h),
        child: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5).r,
            child: SvgPicture.asset(
              "assets/images/Vector.svg",
              width: 15.w,
              height: 10.h,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(6.0).r,
              child: CircleAvatar(
                radius: 55,
                child: Image.asset("assets/images/Ellipse 4.png"),
              ),
            ),
          ],
          elevation: 0, // Remove elevation for a flat look
          backgroundColor: const Color(0xffF8C0C8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.sp),
              bottomRight: Radius.circular(40.sp),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Image.asset("assets/images/Ellipse 4.png"),
            ),
            title: Text(
              "Welcome, Mayada",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff000000),
                fontFamily: "Inter",
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            trailing: SvgPicture.asset("assets/images/Group.svg" , width: 27.w ,height: 31.h,),
            title: Container(
              width: 305.w,
              height: 66.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xffD3BBDD)),
              ),
              child: Center(
                child: Text(
                  "How are you feeling today?",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff000000),
                    fontFamily: "Inter",
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            trailing: InkWell(
                onTap:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SymptomInput())),

                child: SvgPicture.asset("assets/images/Vector (1).svg" , width: 27.w ,height: 31.h,)),
            title:  Text(
                  "Ready to track your health journey? Tap here to input your vital signs!",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000),
                    fontFamily: "Inter",
                  ),
                ),
              ),
          ListTile(
            trailing: InkWell(
                onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HeartAttackCheckView(viewModel:HeartAttackCheckViewModel() , cubit: HeartAttackCheckCubit()))),
                child: SvgPicture.asset("assets/images/Vector (1).svg" , width: 27.w ,height: 31.h,)),
            title:  Text(
              "Assess Your Heart Attack Risk",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff000000),
                fontFamily: "Inter",
              ),
            ),
          ),


        ],
      ),
    );
  }
}
