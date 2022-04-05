import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/features/auth/presentation/bloc/blocs.dart';
import 'package:t2t/features/home/presentation/bloc/app_screens/app_screen_cubit.dart';
import 'package:t2t/features/home/presentation/widgets/bottom_nav.dart';
import 'package:t2t/features/home/presentation/widgets/home_content.dart';
import 'package:t2t/features/meal_plan/Screens/meal_plan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T2T'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<AuthCubit>(context).loggedOut();
            },
            icon: const Icon(Icons.logout),
          ),
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocBuilder<AppScreenCubit, AppScreen>(
        builder: (ctx, state) {
          switch (state) {
            case AppScreen.home:
              return const HomeContent();
            case AppScreen.workouts:
              return const Text('Workouts');
            case AppScreen.meals:
              return const MealPlanScreen();
            case AppScreen.user:
              return const Text('Profile');
          }
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
