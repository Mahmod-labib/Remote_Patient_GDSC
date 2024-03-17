
import '../model/cubit/splash_screen_cubit.dart';

class SplashViewModel {
  final SplashCubit _splashCubit;

  SplashViewModel({required SplashCubit splashCubit})
      : _splashCubit = splashCubit;

  void loadData() {
    _splashCubit.loadData();
  }
}
