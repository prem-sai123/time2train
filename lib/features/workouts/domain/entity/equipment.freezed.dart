// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EquipmentTearOff {
  const _$EquipmentTearOff();

  _Equipment call(
      {required String id, required String name, String? description}) {
    return _Equipment(
      id: id,
      name: name,
      description: description,
    );
  }
}

/// @nodoc
const $Equipment = _$EquipmentTearOff();

/// @nodoc
mixin _$Equipment {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res>;
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res> implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  final Equipment _value;
  // ignore: unused_field
  final $Res Function(Equipment) _then;

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
abstract class _$EquipmentCopyWith<$Res> implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(
          _Equipment value, $Res Function(_Equipment) then) =
      __$EquipmentCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$EquipmentCopyWithImpl<$Res> extends _$EquipmentCopyWithImpl<$Res>
    implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(_Equipment _value, $Res Function(_Equipment) _then)
      : super(_value, (v) => _then(v as _Equipment));

  @override
  _Equipment get _value => super._value as _Equipment;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_Equipment(
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

class _$_Equipment implements _Equipment {
  const _$_Equipment({required this.id, required this.name, this.description});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Equipment &&
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
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      __$EquipmentCopyWithImpl<_Equipment>(this, _$identity);
}

abstract class _Equipment implements Equipment {
  const factory _Equipment(
      {required String id,
      required String name,
      String? description}) = _$_Equipment;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}
