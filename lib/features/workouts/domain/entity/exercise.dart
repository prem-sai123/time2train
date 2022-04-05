import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    required String name,
    required String instructions,
    required String equipment,
    required String equipmentId,
    required String mainMuscle,
    required String mainMuscleId,
    required String type,
    String? videoLink,
  }) = _Exercise;
}
