import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/workouts/domain/entity/exercise.dart';
import 'package:t2t/features/workouts/domain/entity/workout_set.dart';

part 'workout_exercise.freezed.dart';

@freezed
abstract class WorkoutExercise with _$WorkoutExercise {
  const factory WorkoutExercise({
    required Exercise exercise,
    required int totalReps,
    required List<WorkoutSet> sets,
  }) = _WorkoutExercise;
}
