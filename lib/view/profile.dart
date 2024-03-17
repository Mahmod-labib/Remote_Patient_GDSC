import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdcs_hackathon/view/home.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var switchValue = true;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r),
                  ),
                  color: const Color(0xffF8C0C8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          ),
                          icon: const Icon(Icons.arrow_back_ios),
                          color: const Color(0xffFFFFFF),
                        ),
                        SizedBox(width: 111.w),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffFFFFFF),
                            fontFamily: "Inter",
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: -100.h,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 4.png"),
                        radius: 35.r,
                      ),
                    ),
                    Text(
                      "Mayada Elsayed",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                        fontFamily: "Inter",
                      ),
                    ),
                    Text(
                      "mayada@gmail.com",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                        fontFamily: "Inter",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Color(0xffECE3F0), // Change color as desired
            ),
            child: ListTile(
              leading: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000),
                  fontFamily: "Inter",
                ),
              ),
              trailing: Switch(
                value: switchValue,
                onChanged: (_){},
                activeColor:
                    Colors.black, // Change switch active color as desired
                inactiveTrackColor:
                    Colors.grey, // Change switch inactive color as desired
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffECE3F0), // Change color as desired
            ),
            child: ListTile(
                leading: Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000),
                    fontFamily: "Inter",
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                  size: 18,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffECE3F0), // Change color as desired
            ),
            child: ListTile(
                leading: Text(
                  'Privacy',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000),
                    fontFamily: "Inter",
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                )),
          ),
          SizedBox(
            height: 60.h,
          ),
          CustomButton(text: "LogOut", onPressed: () {}),
        ],
      ),
    );
  }
}
