import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/features/home/presentation/bloc/app_screens/app_screen_cubit.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  final _idxToScreens = const {
    0: AppScreen.home,
    1: AppScreen.workouts,
    2: AppScreen.meals,
    3: AppScreen.user,
  };
  final screensToIndex = const {
    AppScreen.home: 0,
    AppScreen.workouts: 1,
    AppScreen.meals: 2,
    AppScreen.user: 3,
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppScreenCubit, AppScreen>(
      builder: (ctx, screen) => BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: screensToIndex[screen]!,
        onTap: (int index) {
          BlocProvider.of<AppScreenCubit>(context).onScreenChanged(_idxToScreens[index]!);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), activeIcon: Icon(Icons.home_outlined), label: 'HOME',),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'WORKOUTS', activeIcon: Icon(Icons.fitness_center_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'MEAL PLAN', activeIcon: Icon(Icons.restaurant_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'USER', activeIcon: Icon(Icons.person_outline))
        ],
      ),
    );
  }
}
