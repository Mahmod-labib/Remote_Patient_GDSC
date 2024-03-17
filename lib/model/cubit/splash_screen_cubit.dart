// cubit/splash_cubit.dart
import 'package:bloc/bloc.dart';

part 'splash_screen_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashLoading()) {
    _loadData();
  }

  void _loadData() async {
    // Simulate loading data
    await Future.delayed(Duration(seconds: 3));
    emit(SplashLoaded());
  }
}
