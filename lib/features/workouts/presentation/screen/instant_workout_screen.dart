import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/workouts/presentation/bloc/equipments/equipments_cubit.dart';
import 'package:t2t/features/workouts/presentation/bloc/exercise_list/exercise_list_cubit.dart';
import 'package:t2t/features/workouts/presentation/bloc/muscles/muscles_cubit.dart';
import 'package:t2t/features/workouts/presentation/widget/exercise_selector.dart';

class InstantWorkoutScreen extends StatelessWidget {
  const InstantWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.done)),
          PopupMenuButton(itemBuilder: (ctx) {
            return [
              PopupMenuItem(child: Text('sdfd'))
            ];
          }),
        ],
      ),
      body: Center(
        child: Text('Add an exercise to get started!'),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (ctx) =>
                        locator.get<ExerciseListCubit>()..fetchInitial()),
                BlocProvider(
                    create: (ctx) =>
                        locator.get<MusclesCubit>()..fetchInitial()),
                BlocProvider(
                    create: (ctx) =>
                        locator.get<EquipmentsCubit>()..fetchInitial()),
              ],
              child: ExerciseSelector(
                title: 'Add Exercise',
                onAdded: (exercise) {

                },
              ),
            );
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
