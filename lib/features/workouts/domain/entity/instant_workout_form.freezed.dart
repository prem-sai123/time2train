// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instant_workout_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InstantWorkoutFormTearOff {
  const _$InstantWorkoutFormTearOff();

  _InstantWorkoutForm call(
      {required List<WorkoutExercise> exercises,
      required DateTime startTime,
      DateTime? endTime}) {
    return _InstantWorkoutForm(
      exercises: exercises,
      startTime: startTime,
      endTime: endTime,
    );
  }
}

/// @nodoc
const $InstantWorkoutForm = _$InstantWorkoutFormTearOff();

/// @nodoc
mixin _$InstantWorkoutForm {
  List<WorkoutExercise> get exercises => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstantWorkoutFormCopyWith<InstantWorkoutForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstantWorkoutFormCopyWith<$Res> {
  factory $InstantWorkoutFormCopyWith(
          InstantWorkoutForm value, $Res Function(InstantWorkoutForm) then) =
      _$InstantWorkoutFormCopyWithImpl<$Res>;
  $Res call(
      {List<WorkoutExercise> exercises, DateTime startTime, DateTime? endTime});
}

/// @nodoc
class _$InstantWorkoutFormCopyWithImpl<$Res>
    implements $InstantWorkoutFormCopyWith<$Res> {
  _$InstantWorkoutFormCopyWithImpl(this._value, this._then);

  final InstantWorkoutForm _value;
  // ignore: unused_field
  final $Res Function(InstantWorkoutForm) _then;

  @override
  $Res call({
    Object? exercises = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExercise>,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$InstantWorkoutFormCopyWith<$Res>
    implements $InstantWorkoutFormCopyWith<$Res> {
  factory _$InstantWorkoutFormCopyWith(
          _InstantWorkoutForm value, $Res Function(_InstantWorkoutForm) then) =
      __$InstantWorkoutFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WorkoutExercise> exercises, DateTime startTime, DateTime? endTime});
}

/// @nodoc
class __$InstantWorkoutFormCopyWithImpl<$Res>
    extends _$InstantWorkoutFormCopyWithImpl<$Res>
    implements _$InstantWorkoutFormCopyWith<$Res> {
  __$InstantWorkoutFormCopyWithImpl(
      _InstantWorkoutForm _value, $Res Function(_InstantWorkoutForm) _then)
      : super(_value, (v) => _then(v as _InstantWorkoutForm));

  @override
  _InstantWorkoutForm get _value => super._value as _InstantWorkoutForm;

  @override
  $Res call({
    Object? exercises = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_InstantWorkoutForm(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExercise>,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_InstantWorkoutForm implements _InstantWorkoutForm {
  const _$_InstantWorkoutForm(
      {required this.exercises, required this.startTime, this.endTime});

  @override
  final List<WorkoutExercise> exercises;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;

  @override
  String toString() {
    return 'InstantWorkoutForm(exercises: $exercises, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InstantWorkoutForm &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime);

  @JsonKey(ignore: true)
  @override
  _$InstantWorkoutFormCopyWith<_InstantWorkoutForm> get copyWith =>
      __$InstantWorkoutFormCopyWithImpl<_InstantWorkoutForm>(this, _$identity);
}

abstract class _InstantWorkoutForm implements InstantWorkoutForm {
  const factory _InstantWorkoutForm(
      {required List<WorkoutExercise> exercises,
      required DateTime startTime,
      DateTime? endTime}) = _$_InstantWorkoutForm;

  @override
  List<WorkoutExercise> get exercises => throw _privateConstructorUsedError;
  @override
  DateTime get startTime => throw _privateConstructorUsedError;
  @override
  DateTime? get endTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InstantWorkoutFormCopyWith<_InstantWorkoutForm> get copyWith =>
      throw _privateConstructorUsedError;
}
