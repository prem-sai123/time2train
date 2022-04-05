import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_set.freezed.dart';

@freezed
abstract class WorkoutSet with _$WorkoutSet {
  const factory WorkoutSet({
    required double weight,
    required int repetitions,
    String? comment,
  }) = _WorkoutSet;
}
