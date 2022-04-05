// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutExerciseTearOff {
  const _$WorkoutExerciseTearOff();

  _WorkoutExercise call(
      {required Exercise exercise,
      required int totalReps,
      required List<WorkoutSet> sets}) {
    return _WorkoutExercise(
      exercise: exercise,
      totalReps: totalReps,
      sets: sets,
    );
  }
}

/// @nodoc
const $WorkoutExercise = _$WorkoutExerciseTearOff();

/// @nodoc
mixin _$WorkoutExercise {
  Exercise get exercise => throw _privateConstructorUsedError;
  int get totalReps => throw _privateConstructorUsedError;
  List<WorkoutSet> get sets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutExerciseCopyWith<WorkoutExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutExerciseCopyWith<$Res> {
  factory $WorkoutExerciseCopyWith(
          WorkoutExercise value, $Res Function(WorkoutExercise) then) =
      _$WorkoutExerciseCopyWithImpl<$Res>;
  $Res call({Exercise exercise, int totalReps, List<WorkoutSet> sets});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$WorkoutExerciseCopyWithImpl<$Res>
    implements $WorkoutExerciseCopyWith<$Res> {
  _$WorkoutExerciseCopyWithImpl(this._value, this._then);

  final WorkoutExercise _value;
  // ignore: unused_field
  final $Res Function(WorkoutExercise) _then;

  @override
  $Res call({
    Object? exercise = freezed,
    Object? totalReps = freezed,
    Object? sets = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      totalReps: totalReps == freezed
          ? _value.totalReps
          : totalReps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<WorkoutSet>,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc
abstract class _$WorkoutExerciseCopyWith<$Res>
    implements $WorkoutExerciseCopyWith<$Res> {
  factory _$WorkoutExerciseCopyWith(
          _WorkoutExercise value, $Res Function(_WorkoutExercise) then) =
      __$WorkoutExerciseCopyWithImpl<$Res>;
  @override
  $Res call({Exercise exercise, int totalReps, List<WorkoutSet> sets});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$WorkoutExerciseCopyWithImpl<$Res>
    extends _$WorkoutExerciseCopyWithImpl<$Res>
    implements _$WorkoutExerciseCopyWith<$Res> {
  __$WorkoutExerciseCopyWithImpl(
      _WorkoutExercise _value, $Res Function(_WorkoutExercise) _then)
      : super(_value, (v) => _then(v as _WorkoutExercise));

  @override
  _WorkoutExercise get _value => super._value as _WorkoutExercise;

  @override
  $Res call({
    Object? exercise = freezed,
    Object? totalReps = freezed,
    Object? sets = freezed,
  }) {
    return _then(_WorkoutExercise(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      totalReps: totalReps == freezed
          ? _value.totalReps
          : totalReps // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<WorkoutSet>,
    ));
  }
}

/// @nodoc

class _$_WorkoutExercise implements _WorkoutExercise {
  const _$_WorkoutExercise(
      {required this.exercise, required this.totalReps, required this.sets});

  @override
  final Exercise exercise;
  @override
  final int totalReps;
  @override
  final List<WorkoutSet> sets;

  @override
  String toString() {
    return 'WorkoutExercise(exercise: $exercise, totalReps: $totalReps, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutExercise &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.totalReps, totalReps) ||
                const DeepCollectionEquality()
                    .equals(other.totalReps, totalReps)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(totalReps) ^
      const DeepCollectionEquality().hash(sets);

  @JsonKey(ignore: true)
  @override
  _$WorkoutExerciseCopyWith<_WorkoutExercise> get copyWith =>
      __$WorkoutExerciseCopyWithImpl<_WorkoutExercise>(this, _$identity);
}

abstract class _WorkoutExercise implements WorkoutExercise {
  const factory _WorkoutExercise(
      {required Exercise exercise,
      required int totalReps,
      required List<WorkoutSet> sets}) = _$_WorkoutExercise;

  @override
  Exercise get exercise => throw _privateConstructorUsedError;
  @override
  int get totalReps => throw _privateConstructorUsedError;
  @override
  List<WorkoutSet> get sets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutExerciseCopyWith<_WorkoutExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
