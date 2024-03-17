// heart_attack_view.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdcs_hackathon/widget/custom_button.dart';
import 'package:gdcs_hackathon/widget/custom_text_form_field.dart';

import '../model/cubit/heart_attack_cubit.dart';
import '../viewModel/heart_attack_view_model.dart';
import 'home.dart';



class HeartAttackCheckView extends StatelessWidget {
  final HeartAttackCheckViewModel viewModel;
  final HeartAttackCheckCubit cubit;

  HeartAttackCheckView({required this.viewModel, required this.cubit});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home())),
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xffFFFFFF),
        ),
        centerTitle: true,
        title: Text(
          'Heart Attack Checker',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFFFFFF),
            fontFamily: "Inter",
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffF8C0C8),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25.0.w),
            child: Column(
              children: [
                CustomTextFormField(title: "Enter the Age", controller: viewModel.ageController),
                CustomTextFormField(title: "Enter the Sex", controller: viewModel.sexController),
                CustomTextFormField(title: "Enter the chest pain type", controller: viewModel.chestPainTypeController),
                CustomTextFormField(title: "Enter the resting blood pressure", controller: viewModel.restingBloodPressureController),
                CustomTextFormField(title: "Enter the serum cholestoral in mg/dl", controller: viewModel.serumCholestoralController),
                CustomTextFormField(title: "Enter the festing blood pressure", controller: viewModel.fastingBloodPressureController),
                CustomTextFormField(title: "Enter the resting electrocardiographic results", controller: viewModel.restingElectrocardiographicResultsController),
                CustomTextFormField(title: "Enter the maximum heart rate achieved", controller: viewModel.maxHeartRateAchievedController),
                CustomTextFormField(title: "Enter the exercise induced angina", controller: viewModel.exerciseInducedAnginaController),
                CustomTextFormField(title: "Enter the oldpeak ", controller: viewModel.oldPeakController),
                CustomTextFormField(title: "Enter slope of the peak exercise ST segme ", controller: viewModel.slopeOfPeakExerciseSTSegmeController),
                CustomTextFormField(title: "Enter number of major vessels  ", controller: viewModel.numberOfMajorVesselsController),
                CustomTextFormField(title: "Enter the thal value ", controller: viewModel.thalValueController),
                SizedBox(height: 25.h),
                Text(
                  'The result',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 25.h),
                CustomButton(
                  text: "Check",
                  onPressed: () {
                    cubit.updateData(viewModel.getData());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
