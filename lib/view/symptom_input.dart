import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdcs_hackathon/view/home.dart';
import 'package:gdcs_hackathon/view/vital_signs.dart';
import 'package:gdcs_hackathon/widget/checkbox_container.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';
import 'package:gdcs_hackathon/widget/custom_checkbox_with_text.dart';
import 'package:gdcs_hackathon/widget/custom_text_form_field.dart';

import '../model/cubit/symtomb_input.dart';
import '../viewModel/symptomb_view_model.dart';

class SymptomInput extends StatelessWidget {
  final SymptomInputCubit _cubit = SymptomInputCubit();

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          ),
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffFFFFFF),
        ),
        centerTitle: true,
        title: Text(
          'Symptom Input',
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
        padding: const EdgeInsets.all(20.0).r,
        child: BlocBuilder<SymptomInputCubit, SymptomInputModel>(
          bloc: _cubit,
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CustomCheckboxWithTextContainer(
                    text: "  Headache",
                    value: state.headache,
                    onChanged: (value) => _cubit.setHeadache(value),
                  ),
                  SizedBox(height: 3.h),
                  CustomCheckboxWithTextContainer(
                    text: "  Fatigue",
                    value: state.fatigue,
                    onChanged: (value) => _cubit.setFatigue(value),
                  ),
                  SizedBox(height: 3.h),
                  CustomCheckboxWithTextContainer(
                    text: "  Fever",
                    value: state.fever,
                    onChanged: (value) => _cubit.setFever(value),
                  ),
                  SizedBox(height: 3.h),
                  CustomCheckboxWithTextContainer(
                    text: "  Chills",
                    value: state.chills,
                    onChanged: (value) => _cubit.setChills(value),
                  ),
                  SizedBox(height: 3.h),
                  CustomCheckboxWithTextContainer(
                    text: "  Muscle aches",
                    value: state.muscleAches,
                    onChanged: (value) => _cubit.setMuscleAches(value),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    "Severity/Intensity Scale",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff000000),
                      fontFamily: "Inter",
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Slider(
                    activeColor: const Color(0xffECE3F0),
                    value: state.severity,
                    max: 100,
                    min: 0,
                    label: state.severity.round().toString(),
                    onChanged: (double value) => _cubit.setSeverity(value),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFormField(
                    title: "How are you feeling today?",
                    controller: _controller,
                    onChanged: (value) => _cubit.setFeeling(value),
                  ),
                  SizedBox(height: 35.h),
                  CustomButton(
                    text: "Save",
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>VitalSigns()));
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
