import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235.w,
      height: 45.h,
      decoration: BoxDecoration(
        color: Color(0xffD3BBDD) ,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Color(0xff000000) , fontSize: 14.sp , fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
