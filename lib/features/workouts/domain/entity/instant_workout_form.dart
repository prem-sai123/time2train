import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/workouts/domain/entity/workout_exercise.dart';

part 'instant_workout_form.freezed.dart';

@freezed
abstract class InstantWorkoutForm with _$InstantWorkoutForm {
  const factory InstantWorkoutForm({
    required List<WorkoutExercise> exercises,
    required DateTime startTime,
    DateTime? endTime,
  }) = _InstantWorkoutForm;
}
