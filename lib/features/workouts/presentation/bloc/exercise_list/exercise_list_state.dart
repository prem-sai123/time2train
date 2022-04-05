part of 'exercise_list_cubit.dart';

@freezed
abstract class ExerciseListState with _$ExerciseListState {
  const factory ExerciseListState.initial() = _Initial;

  const factory ExerciseListState.loading() = _Loading;

  const factory ExerciseListState.success({
    required List<Exercise> records,
    required bool hasReachedMax,
    String? query,
    String? muscle,
    String? equipment,
  }) = _Success;

  const factory ExerciseListState.failure(Failure failure) = _Failure;
}
