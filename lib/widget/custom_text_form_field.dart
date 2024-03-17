import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final String hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final double? height;
  final double? width;
  // New validator function

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.controller,
    this.hintText="",
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.obscureText = false,
    this.onChanged,
    this.validator,  this.height,  this.width, // Include validator in constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
           SizedBox(height: 8.h),
          SizedBox(
            height:height?? 57.h,
            width: height??389.w ,
            child: TextFormField(

              controller: controller,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              obscureText: obscureText,
              onChanged: onChanged,
              validator: validator,
              // Set the validator
              decoration:  InputDecoration(
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.sp),
                borderSide: const BorderSide(color: Color(0xffD3BBDD)),

              ),
                enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.sp),

                    borderSide: const BorderSide(
                color: Color(0xffD3BBDD),

              )

              ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.sp),
                  borderSide: const BorderSide(color: Color(0xffD3BBDD)),


                ), // Remove the border
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h), // Adjust padding as needed
              ),
            ),
          )
        ]);
  }}


