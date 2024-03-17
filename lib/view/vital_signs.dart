import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdcs_hackathon/view/profile.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';
import 'package:gdcs_hackathon/widget/custom_text_form_field.dart';


class VitalSigns extends StatelessWidget {
  const VitalSigns({super.key});

  @override
  Widget build(BuildContext context) {
    var _controller=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ' Vital Signs',
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
        padding: const EdgeInsets.all(15.0).r,
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            ListTile(
              title: CustomTextFormField(
                title: "Heart Rate ", controller: _controller ,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h,),
                  Text("  bpm",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                      fontFamily: "Inter",
                    ),),
                ],
              ),
            ),

            SizedBox(height: 25.h,),
            Align(
              alignment: Alignment.topLeft,
              child: Text("   Blood Pressure",
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff000000),
                  fontFamily: "Inter",
                ),),
            ),
            SizedBox(height: 8.h,),
            ListTile(
              title: CustomTextFormField(
                title: "Systolic", controller: _controller ,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h,),
                  Text("mmHg",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                      fontFamily: "Inter",
                    ),),
                ],
              ),
            ),
            ListTile(
              title: CustomTextFormField(
                title: "Diastolic  ", controller: _controller ,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h,),
                  Text("mmHg",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                      fontFamily: "Inter",
                    ),),
                ],
              ),
            ),
            ListTile(
              title: CustomTextFormField(
                title: "Temperature ", controller: _controller ,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h,),
                  Text("  °C/°F",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                      fontFamily: "Inter",
                    ),),
                ],
              ),
            ),
         SizedBox(height: 30.h,),
            CustomButton(text: "Submit", onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:
              (context)=>const Profile()
              ));
            }),

          ],
        ),
      ),
    );
  }
}
