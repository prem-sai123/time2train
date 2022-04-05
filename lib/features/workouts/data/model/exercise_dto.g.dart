// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseDto _$$_ExerciseDtoFromJson(Map<String, dynamic> json) =>
    _$_ExerciseDto(
      name: json['name'] as String,
      instructions: json['instructions'] as String,
      equipment: json[r'tTTEquipment$_identifier'] as String,
      equipmentId: json['tTTEquipment'] as String,
      mainMuscle: json['tTTMuscles'] as String,
      mainMuscleId: json[r'tTTMuscles$_identifier'] as String,
      type: json[r'tTTExerciseType$_identifier'] as String,
      videoLink: json['videoLink'] as String?,
    );

Map<String, dynamic> _$$_ExerciseDtoToJson(_$_ExerciseDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'instructions': instance.instructions,
      r'tTTEquipment$_identifier': instance.equipment,
      'tTTEquipment': instance.equipmentId,
      'tTTMuscles': instance.mainMuscle,
      r'tTTMuscles$_identifier': instance.mainMuscleId,
      r'tTTExerciseType$_identifier': instance.type,
      'videoLink': instance.videoLink,
    };
