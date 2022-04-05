import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/features/workouts/domain/repo/workout_repo.dart';

part 'new_instant_workout_cubit.freezed.dart';
part 'new_instant_workout_state.dart';

@injectable
class NewInstantWorkoutCubit extends Cubit<NewInstantWorkoutState> {
  final WorkoutRepo repo;

  NewInstantWorkoutCubit(this.repo): super(const NewInstantWorkoutState(workoutExercises: <WorkoutExercise>[]));

  void onExerciseAdded(Exercise exercise) {
    final exercises = [...state.workoutExercises];

    exercises.insert(0, WorkoutExercise(exercise: exercise, totalReps: 0, sets: <WorkoutSet>[]));
  }

  void onSetAdded() {

  }

  void startWorkout() {

  }
}