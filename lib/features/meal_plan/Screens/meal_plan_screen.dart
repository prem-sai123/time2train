import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/features/meal_plan/Screens/user_inputs_screen.dart';
import 'package:t2t/features/meal_plan/cubit/fetch_activity_level_cubit.dart';
import 'package:t2t/features/meal_plan/cubit/mealplan_inputs_cubit.dart';

class MealPlanScreen extends StatelessWidget {
  const MealPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (_) =>
                  FetchActivityLevelCubit()..fetchAcitivylevelRecords(),
              child: BlocProvider<MealplanInputsCubit>(
                  create: (context) => MealplanInputsCubit(),
                  child: const UserInputScreen()),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.notes_outlined),
            Text(
              'Quiz',
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
