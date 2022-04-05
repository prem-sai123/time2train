import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';

part 'exercise_dto.freezed.dart';

part 'exercise_dto.g.dart';

@freezed
abstract class ExerciseDto implements _$ExerciseDto {
  const ExerciseDto._();

  const factory ExerciseDto({
    required String name,
    required String instructions,
    @JsonKey(name: 'tTTEquipment\$_identifier') required String equipment,
    @JsonKey(name: 'tTTEquipment') required String equipmentId,
    @JsonKey(name: 'tTTMuscles') required String mainMuscle,
    @JsonKey(name: 'tTTMuscles\$_identifier') required String mainMuscleId,
    @JsonKey(name: 'tTTExerciseType\$_identifier') required String type,
    String? videoLink,
  }) = _ExerciseDto;

  factory ExerciseDto.fromDomain(Exercise details) {
    return ExerciseDto(
      name: details.name,
      instructions: details.instructions,
      equipment: details.equipment,
      equipmentId: details.equipmentId,
      mainMuscle: details.mainMuscle,
      mainMuscleId: details.mainMuscleId,
      type: details.type,
    );
  }

  Exercise toDomain() {
    return Exercise(
      name: name,
      instructions: instructions,
      equipment: equipment,
      equipmentId: equipmentId,
      mainMuscle: mainMuscle,
      mainMuscleId: mainMuscleId,
      type: type,
    );
  }

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);
}
