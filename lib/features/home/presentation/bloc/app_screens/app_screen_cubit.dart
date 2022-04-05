import 'package:flutter_bloc/flutter_bloc.dart';

enum AppScreen { home, workouts, meals, user }

class AppScreenCubit extends Cubit<AppScreen> {
  AppScreenCubit() : super(AppScreen.home);

  void onScreenChanged(AppScreen screen) => emit(screen);
}
