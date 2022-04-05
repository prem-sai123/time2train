// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseDto.fromJson(json);
}

/// @nodoc
class _$ExerciseDtoTearOff {
  const _$ExerciseDtoTearOff();

  _ExerciseDto call(
      {required String name,
      required String instructions,
      @JsonKey(name: 'tTTEquipment\$_identifier') required String equipment,
      @JsonKey(name: 'tTTEquipment') required String equipmentId,
      @JsonKey(name: 'tTTMuscles') required String mainMuscle,
      @JsonKey(name: 'tTTMuscles\$_identifier') required String mainMuscleId,
      @JsonKey(name: 'tTTExerciseType\$_identifier') required String type,
      String? videoLink}) {
    return _ExerciseDto(
      name: name,
      instructions: instructions,
      equipment: equipment,
      equipmentId: equipmentId,
      mainMuscle: mainMuscle,
      mainMuscleId: mainMuscleId,
      type: type,
      videoLink: videoLink,
    );
  }

  ExerciseDto fromJson(Map<String, Object> json) {
    return ExerciseDto.fromJson(json);
  }
}

/// @nodoc
const $ExerciseDto = _$ExerciseDtoTearOff();

/// @nodoc
mixin _$ExerciseDto {
  String get name => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'tTTEquipment\$_identifier')
  String get equipment => throw _privateConstructorUsedError;
  @JsonKey(name: 'tTTEquipment')
  String get equipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tTTMuscles')
  String get mainMuscle => throw _privateConstructorUsedError;
  @JsonKey(name: 'tTTMuscles\$_identifier')
  String get mainMuscleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tTTExerciseType\$_identifier')
  String get type => throw _privateConstructorUsedError;
  String? get videoLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String instructions,
      @JsonKey(name: 'tTTEquipment\$_identifier') String equipment,
      @JsonKey(name: 'tTTEquipment') String equipmentId,
      @JsonKey(name: 'tTTMuscles') String mainMuscle,
      @JsonKey(name: 'tTTMuscles\$_identifier') String mainMuscleId,
      @JsonKey(name: 'tTTExerciseType\$_identifier') String type,
      String? videoLink});
}

/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res> implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._value, this._then);

  final ExerciseDto _value;
  // ignore: unused_field
  final $Res Function(ExerciseDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? instructions = freezed,
    Object? equipment = freezed,
    Object? equipmentId = freezed,
    Object? mainMuscle = freezed,
    Object? mainMuscleId = freezed,
    Object? type = freezed,
    Object? videoLink = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentId: equipmentId == freezed
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      mainMuscle: mainMuscle == freezed
          ? _value.mainMuscle
          : mainMuscle // ignore: cast_nullable_to_non_nullable
              as String,
      mainMuscleId: mainMuscleId == freezed
          ? _value.mainMuscleId
          : mainMuscleId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseDtoCopyWith<$Res>
    implements $ExerciseDtoCopyWith<$Res> {
  factory _$ExerciseDtoCopyWith(
          _ExerciseDto value, $Res Function(_ExerciseDto) then) =
      __$ExerciseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String instructions,
      @JsonKey(name: 'tTTEquipment\$_identifier') String equipment,
      @JsonKey(name: 'tTTEquipment') String equipmentId,
      @JsonKey(name: 'tTTMuscles') String mainMuscle,
      @JsonKey(name: 'tTTMuscles\$_identifier') String mainMuscleId,
      @JsonKey(name: 'tTTExerciseType\$_identifier') String type,
      String? videoLink});
}

/// @nodoc
class __$ExerciseDtoCopyWithImpl<$Res> extends _$ExerciseDtoCopyWithImpl<$Res>
    implements _$ExerciseDtoCopyWith<$Res> {
  __$ExerciseDtoCopyWithImpl(
      _ExerciseDto _value, $Res Function(_ExerciseDto) _then)
      : super(_value, (v) => _then(v as _ExerciseDto));

  @override
  _ExerciseDto get _value => super._value as _ExerciseDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? instructions = freezed,
    Object? equipment = freezed,
    Object? equipmentId = freezed,
    Object? mainMuscle = freezed,
    Object? mainMuscleId = freezed,
    Object? type = freezed,
    Object? videoLink = freezed,
  }) {
    return _then(_ExerciseDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentId: equipmentId == freezed
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      mainMuscle: mainMuscle == freezed
          ? _value.mainMuscle
          : mainMuscle // ignore: cast_nullable_to_non_nullable
              as String,
      mainMuscleId: mainMuscleId == freezed
          ? _value.mainMuscleId
          : mainMuscleId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseDto extends _ExerciseDto {
  const _$_ExerciseDto(
      {required this.name,
      required this.instructions,
      @JsonKey(name: 'tTTEquipment\$_identifier') required this.equipment,
      @JsonKey(name: 'tTTEquipment') required this.equipmentId,
      @JsonKey(name: 'tTTMuscles') required this.mainMuscle,
      @JsonKey(name: 'tTTMuscles\$_identifier') required this.mainMuscleId,
      @JsonKey(name: 'tTTExerciseType\$_identifier') required this.type,
      this.videoLink})
      : super._();

  factory _$_ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseDtoFromJson(json);

  @override
  final String name;
  @override
  final String instructions;
  @override
  @JsonKey(name: 'tTTEquipment\$_identifier')
  final String equipment;
  @override
  @JsonKey(name: 'tTTEquipment')
  final String equipmentId;
  @override
  @JsonKey(name: 'tTTMuscles')
  final String mainMuscle;
  @override
  @JsonKey(name: 'tTTMuscles\$_identifier')
  final String mainMuscleId;
  @override
  @JsonKey(name: 'tTTExerciseType\$_identifier')
  final String type;
  @override
  final String? videoLink;

  @override
  String toString() {
    return 'ExerciseDto(name: $name, instructions: $instructions, equipment: $equipment, equipmentId: $equipmentId, mainMuscle: $mainMuscle, mainMuscleId: $mainMuscleId, type: $type, videoLink: $videoLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality()
                    .equals(other.equipment, equipment)) &&
            (identical(other.equipmentId, equipmentId) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentId, equipmentId)) &&
            (identical(other.mainMuscle, mainMuscle) ||
                const DeepCollectionEquality()
                    .equals(other.mainMuscle, mainMuscle)) &&
            (identical(other.mainMuscleId, mainMuscleId) ||
                const DeepCollectionEquality()
                    .equals(other.mainMuscleId, mainMuscleId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.videoLink, videoLink) ||
                const DeepCollectionEquality()
                    .equals(other.videoLink, videoLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(equipment) ^
      const DeepCollectionEquality().hash(equipmentId) ^
      const DeepCollectionEquality().hash(mainMuscle) ^
      const DeepCollectionEquality().hash(mainMuscleId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(videoLink);

  @JsonKey(ignore: true)
  @override
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith =>
      __$ExerciseDtoCopyWithImpl<_ExerciseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseDtoToJson(this);
  }
}

abstract class _ExerciseDto extends ExerciseDto {
  const factory _ExerciseDto(
      {required String name,
      required String instructions,
      @JsonKey(name: 'tTTEquipment\$_identifier') required String equipment,
      @JsonKey(name: 'tTTEquipment') required String equipmentId,
      @JsonKey(name: 'tTTMuscles') required String mainMuscle,
      @JsonKey(name: 'tTTMuscles\$_identifier') required String mainMuscleId,
      @JsonKey(name: 'tTTExerciseType\$_identifier') required String type,
      String? videoLink}) = _$_ExerciseDto;
  const _ExerciseDto._() : super._();

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_ExerciseDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get instructions => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tTTEquipment\$_identifier')
  String get equipment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tTTEquipment')
  String get equipmentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tTTMuscles')
  String get mainMuscle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tTTMuscles\$_identifier')
  String get mainMuscleId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tTTExerciseType\$_identifier')
  String get type => throw _privateConstructorUsedError;
  @override
  String? get videoLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
