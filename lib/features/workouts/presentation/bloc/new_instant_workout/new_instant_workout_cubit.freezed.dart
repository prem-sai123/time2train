// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_instant_workout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewInstantWorkoutStateTearOff {
  const _$NewInstantWorkoutStateTearOff();

  _NewInstantWorkoutState call(
      {required List<WorkoutExercise> workoutExercises}) {
    return _NewInstantWorkoutState(
      workoutExercises: workoutExercises,
    );
  }
}

/// @nodoc
const $NewInstantWorkoutState = _$NewInstantWorkoutStateTearOff();

/// @nodoc
mixin _$NewInstantWorkoutState {
  List<WorkoutExercise> get workoutExercises =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewInstantWorkoutStateCopyWith<NewInstantWorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewInstantWorkoutStateCopyWith<$Res> {
  factory $NewInstantWorkoutStateCopyWith(NewInstantWorkoutState value,
          $Res Function(NewInstantWorkoutState) then) =
      _$NewInstantWorkoutStateCopyWithImpl<$Res>;
  $Res call({List<WorkoutExercise> workoutExercises});
}

/// @nodoc
class _$NewInstantWorkoutStateCopyWithImpl<$Res>
    implements $NewInstantWorkoutStateCopyWith<$Res> {
  _$NewInstantWorkoutStateCopyWithImpl(this._value, this._then);

  final NewInstantWorkoutState _value;
  // ignore: unused_field
  final $Res Function(NewInstantWorkoutState) _then;

  @override
  $Res call({
    Object? workoutExercises = freezed,
  }) {
    return _then(_value.copyWith(
      workoutExercises: workoutExercises == freezed
          ? _value.workoutExercises
          : workoutExercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExercise>,
    ));
  }
}

/// @nodoc
abstract class _$NewInstantWorkoutStateCopyWith<$Res>
    implements $NewInstantWorkoutStateCopyWith<$Res> {
  factory _$NewInstantWorkoutStateCopyWith(_NewInstantWorkoutState value,
          $Res Function(_NewInstantWorkoutState) then) =
      __$NewInstantWorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call({List<WorkoutExercise> workoutExercises});
}

/// @nodoc
class __$NewInstantWorkoutStateCopyWithImpl<$Res>
    extends _$NewInstantWorkoutStateCopyWithImpl<$Res>
    implements _$NewInstantWorkoutStateCopyWith<$Res> {
  __$NewInstantWorkoutStateCopyWithImpl(_NewInstantWorkoutState _value,
      $Res Function(_NewInstantWorkoutState) _then)
      : super(_value, (v) => _then(v as _NewInstantWorkoutState));

  @override
  _NewInstantWorkoutState get _value => super._value as _NewInstantWorkoutState;

  @override
  $Res call({
    Object? workoutExercises = freezed,
  }) {
    return _then(_NewInstantWorkoutState(
      workoutExercises: workoutExercises == freezed
          ? _value.workoutExercises
          : workoutExercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExercise>,
    ));
  }
}

/// @nodoc

class _$_NewInstantWorkoutState implements _NewInstantWorkoutState {
  const _$_NewInstantWorkoutState({required this.workoutExercises});

  @override
  final List<WorkoutExercise> workoutExercises;

  @override
  String toString() {
    return 'NewInstantWorkoutState(workoutExercises: $workoutExercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewInstantWorkoutState &&
            (identical(other.workoutExercises, workoutExercises) ||
                const DeepCollectionEquality()
                    .equals(other.workoutExercises, workoutExercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workoutExercises);

  @JsonKey(ignore: true)
  @override
  _$NewInstantWorkoutStateCopyWith<_NewInstantWorkoutState> get copyWith =>
      __$NewInstantWorkoutStateCopyWithImpl<_NewInstantWorkoutState>(
          this, _$identity);
}

abstract class _NewInstantWorkoutState implements NewInstantWorkoutState {
  const factory _NewInstantWorkoutState(
          {required List<WorkoutExercise> workoutExercises}) =
      _$_NewInstantWorkoutState;

  @override
  List<WorkoutExercise> get workoutExercises =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewInstantWorkoutStateCopyWith<_NewInstantWorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
