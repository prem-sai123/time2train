import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';

part 'equipment_dto.freezed.dart';

part 'equipment_dto.g.dart';

@freezed
abstract class EquipmentDto implements _$EquipmentDto {
  const EquipmentDto._();

  @JsonSerializable(explicitToJson: true)
  const factory EquipmentDto({
    required String id,
    required String name,
    String? description,
  }) = _EquipmentDto;

  factory EquipmentDto.fromDomain(Equipment details) {
    return EquipmentDto(
      id: details.id,
      name: details.name,
      description: details.description,
    );
  }

  Equipment toDomain() {
    return Equipment(
      id: id,
      name: name,
      description: description,
    );
  }

  factory EquipmentDto.fromJson(Map<String, dynamic> json) =>
      _$EquipmentDtoFromJson(json);
}
