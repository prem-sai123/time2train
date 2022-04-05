part of 'new_instant_workout_cubit.dart';

@freezed
abstract class NewInstantWorkoutState with _$NewInstantWorkoutState {
  const factory NewInstantWorkoutState({
    required List<WorkoutExercise> workoutExercises,
}) = _NewInstantWorkoutState;
}
