// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'muscle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MuscleDto _$MuscleDtoFromJson(Map<String, dynamic> json) {
  return _MuscleDto.fromJson(json);
}

/// @nodoc
class _$MuscleDtoTearOff {
  const _$MuscleDtoTearOff();

  _MuscleDto call(
      {required String id, required String name, String? description}) {
    return _MuscleDto(
      id: id,
      name: name,
      description: description,
    );
  }

  MuscleDto fromJson(Map<String, Object> json) {
    return MuscleDto.fromJson(json);
  }
}

/// @nodoc
const $MuscleDto = _$MuscleDtoTearOff();

/// @nodoc
mixin _$MuscleDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleDtoCopyWith<MuscleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleDtoCopyWith<$Res> {
  factory $MuscleDtoCopyWith(MuscleDto value, $Res Function(MuscleDto) then) =
      _$MuscleDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$MuscleDtoCopyWithImpl<$Res> implements $MuscleDtoCopyWith<$Res> {
  _$MuscleDtoCopyWithImpl(this._value, this._then);

  final MuscleDto _value;
  // ignore: unused_field
  final $Res Function(MuscleDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MuscleDtoCopyWith<$Res> implements $MuscleDtoCopyWith<$Res> {
  factory _$MuscleDtoCopyWith(
          _MuscleDto value, $Res Function(_MuscleDto) then) =
      __$MuscleDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$MuscleDtoCopyWithImpl<$Res> extends _$MuscleDtoCopyWithImpl<$Res>
    implements _$MuscleDtoCopyWith<$Res> {
  __$MuscleDtoCopyWithImpl(_MuscleDto _value, $Res Function(_MuscleDto) _then)
      : super(_value, (v) => _then(v as _MuscleDto));

  @override
  _MuscleDto get _value => super._value as _MuscleDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_MuscleDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MuscleDto extends _MuscleDto {
  const _$_MuscleDto({required this.id, required this.name, this.description})
      : super._();

  factory _$_MuscleDto.fromJson(Map<String, dynamic> json) =>
      _$$_MuscleDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'MuscleDto(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MuscleDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$MuscleDtoCopyWith<_MuscleDto> get copyWith =>
      __$MuscleDtoCopyWithImpl<_MuscleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MuscleDtoToJson(this);
  }
}

abstract class _MuscleDto extends MuscleDto {
  const factory _MuscleDto(
      {required String id,
      required String name,
      String? description}) = _$_MuscleDto;
  const _MuscleDto._() : super._();

  factory _MuscleDto.fromJson(Map<String, dynamic> json) =
      _$_MuscleDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MuscleDtoCopyWith<_MuscleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
