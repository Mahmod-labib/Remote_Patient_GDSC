import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Importing for ScreenUtil

class CustomCheckboxWithTextContainer extends StatefulWidget {
  final String text;
  final Color? activeColor;
  final double fontSize;
  final Color textColor;
  final value;
  Function? onChanged;
   CustomCheckboxWithTextContainer({
    Key? key,
    required this.text,
    this.activeColor,
    this.fontSize = 12.0,
    this.textColor = const Color(0xff000000), this.value,this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxWithTextContainerState createState() {
    return _CustomCheckboxWithTextContainerState();
  }
}

class _CustomCheckboxWithTextContainerState extends State<CustomCheckboxWithTextContainer> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (bool? newValue) {
            setState(() {
              _value = newValue!;
            });
          },
          activeColor: widget.activeColor ?? const Color(0xff6C63FF),
        ),
        Expanded(
          child: Container(
            width: 300.w,
            height: 35.h,
            decoration: const BoxDecoration(
              color: Color(0xffECE3F0),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: widget.fontSize.sp, color: widget.textColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
