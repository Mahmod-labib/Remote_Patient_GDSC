import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Importing for ScreenUtil

class CustomCheckboxWithText extends StatefulWidget {
  final String text;
  final Color? activeColor;
  final double fontSize;
  final Color textColor;

  const CustomCheckboxWithText({
    Key? key,
    required this.text,
    this.activeColor,
    this.fontSize = 12.0,
    this.textColor = const Color(0xff000000),
  }) : super(key: key);

  @override
  _CustomCheckboxWithTextState createState() => _CustomCheckboxWithTextState();
}

class _CustomCheckboxWithTextState extends State<CustomCheckboxWithText> {
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
          activeColor: widget.activeColor ?? Color(0xff6C63FF),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text,
                style: TextStyle(fontSize: widget.fontSize.sp, color: widget.textColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
