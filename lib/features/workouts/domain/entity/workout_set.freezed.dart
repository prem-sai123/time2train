// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutSetTearOff {
  const _$WorkoutSetTearOff();

  _WorkoutSet call(
      {required double weight, required int repetitions, String? comment}) {
    return _WorkoutSet(
      weight: weight,
      repetitions: repetitions,
      comment: comment,
    );
  }
}

/// @nodoc
const $WorkoutSet = _$WorkoutSetTearOff();

/// @nodoc
mixin _$WorkoutSet {
  double get weight => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutSetCopyWith<WorkoutSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSetCopyWith<$Res> {
  factory $WorkoutSetCopyWith(
          WorkoutSet value, $Res Function(WorkoutSet) then) =
      _$WorkoutSetCopyWithImpl<$Res>;
  $Res call({double weight, int repetitions, String? comment});
}

/// @nodoc
class _$WorkoutSetCopyWithImpl<$Res> implements $WorkoutSetCopyWith<$Res> {
  _$WorkoutSetCopyWithImpl(this._value, this._then);

  final WorkoutSet _value;
  // ignore: unused_field
  final $Res Function(WorkoutSet) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? repetitions = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutSetCopyWith<$Res> implements $WorkoutSetCopyWith<$Res> {
  factory _$WorkoutSetCopyWith(
          _WorkoutSet value, $Res Function(_WorkoutSet) then) =
      __$WorkoutSetCopyWithImpl<$Res>;
  @override
  $Res call({double weight, int repetitions, String? comment});
}

/// @nodoc
class __$WorkoutSetCopyWithImpl<$Res> extends _$WorkoutSetCopyWithImpl<$Res>
    implements _$WorkoutSetCopyWith<$Res> {
  __$WorkoutSetCopyWithImpl(
      _WorkoutSet _value, $Res Function(_WorkoutSet) _then)
      : super(_value, (v) => _then(v as _WorkoutSet));

  @override
  _WorkoutSet get _value => super._value as _WorkoutSet;

  @override
  $Res call({
    Object? weight = freezed,
    Object? repetitions = freezed,
    Object? comment = freezed,
  }) {
    return _then(_WorkoutSet(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WorkoutSet implements _WorkoutSet {
  const _$_WorkoutSet(
      {required this.weight, required this.repetitions, this.comment});

  @override
  final double weight;
  @override
  final int repetitions;
  @override
  final String? comment;

  @override
  String toString() {
    return 'WorkoutSet(weight: $weight, repetitions: $repetitions, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutSet &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(repetitions) ^
      const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$WorkoutSetCopyWith<_WorkoutSet> get copyWith =>
      __$WorkoutSetCopyWithImpl<_WorkoutSet>(this, _$identity);
}

abstract class _WorkoutSet implements WorkoutSet {
  const factory _WorkoutSet(
      {required double weight,
      required int repetitions,
      String? comment}) = _$_WorkoutSet;

  @override
  double get weight => throw _privateConstructorUsedError;
  @override
  int get repetitions => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutSetCopyWith<_WorkoutSet> get copyWith =>
      throw _privateConstructorUsedError;
}
