import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';

part 'muscle_dto.freezed.dart';
part 'muscle_dto.g.dart';

@freezed
abstract class MuscleDto implements _$MuscleDto {
  const MuscleDto._();

  @JsonSerializable(explicitToJson: true)
  const factory MuscleDto({
    required String id,
    required String name,
    String? description,
  }) = _MuscleDto;

  factory MuscleDto.fromDomain(Muscle details) {
    return MuscleDto(
      id: details.id,
      name: details.name,
      description: details.description,
    );
  }

  Muscle toDomain() {
    return Muscle(
      id: id,
      name: name,
      description: description,
    );
  }

  factory MuscleDto.fromJson(Map<String, dynamic> json) => _$MuscleDtoFromJson(json);
}
