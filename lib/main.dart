// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdcs_hackathon/view/splash_screen.dart';

import 'model/cubit/splash_screen_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => SplashCubit(),
        child: SplashScreen(),
      ),
    );
  }
}
