// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentDto _$EquipmentDtoFromJson(Map<String, dynamic> json) {
  return _EquipmentDto.fromJson(json);
}

/// @nodoc
class _$EquipmentDtoTearOff {
  const _$EquipmentDtoTearOff();

  _EquipmentDto call(
      {required String id, required String name, String? description}) {
    return _EquipmentDto(
      id: id,
      name: name,
      description: description,
    );
  }

  EquipmentDto fromJson(Map<String, Object> json) {
    return EquipmentDto.fromJson(json);
  }
}

/// @nodoc
const $EquipmentDto = _$EquipmentDtoTearOff();

/// @nodoc
mixin _$EquipmentDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentDtoCopyWith<EquipmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDtoCopyWith<$Res> {
  factory $EquipmentDtoCopyWith(
          EquipmentDto value, $Res Function(EquipmentDto) then) =
      _$EquipmentDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$EquipmentDtoCopyWithImpl<$Res> implements $EquipmentDtoCopyWith<$Res> {
  _$EquipmentDtoCopyWithImpl(this._value, this._then);

  final EquipmentDto _value;
  // ignore: unused_field
  final $Res Function(EquipmentDto) _then;

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
abstract class _$EquipmentDtoCopyWith<$Res>
    implements $EquipmentDtoCopyWith<$Res> {
  factory _$EquipmentDtoCopyWith(
          _EquipmentDto value, $Res Function(_EquipmentDto) then) =
      __$EquipmentDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$EquipmentDtoCopyWithImpl<$Res> extends _$EquipmentDtoCopyWithImpl<$Res>
    implements _$EquipmentDtoCopyWith<$Res> {
  __$EquipmentDtoCopyWithImpl(
      _EquipmentDto _value, $Res Function(_EquipmentDto) _then)
      : super(_value, (v) => _then(v as _EquipmentDto));

  @override
  _EquipmentDto get _value => super._value as _EquipmentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_EquipmentDto(
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
class _$_EquipmentDto extends _EquipmentDto {
  const _$_EquipmentDto(
      {required this.id, required this.name, this.description})
      : super._();

  factory _$_EquipmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'EquipmentDto(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EquipmentDto &&
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
  _$EquipmentDtoCopyWith<_EquipmentDto> get copyWith =>
      __$EquipmentDtoCopyWithImpl<_EquipmentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentDtoToJson(this);
  }
}

abstract class _EquipmentDto extends EquipmentDto {
  const factory _EquipmentDto(
      {required String id,
      required String name,
      String? description}) = _$_EquipmentDto;
  const _EquipmentDto._() : super._();

  factory _EquipmentDto.fromJson(Map<String, dynamic> json) =
      _$_EquipmentDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EquipmentDtoCopyWith<_EquipmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
