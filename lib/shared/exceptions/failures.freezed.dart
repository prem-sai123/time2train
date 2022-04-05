// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _ServerFailure serverFailure(String message) {
    return _ServerFailure(
      message,
    );
  }

  _NoInternet noInternet(String message) {
    return _NoInternet(
      message,
    );
  }

  _FormValidationFailure formValidationFailure(String message) {
    return _FormValidationFailure(
      message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) formValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_FormValidationFailure value)
        formValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ServerFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) formValidationFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_FormValidationFailure value)
        formValidationFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure(String message) = _$_ServerFailure;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NoInternetCopyWith<$Res> {
  __$NoInternetCopyWithImpl(
      _NoInternet _value, $Res Function(_NoInternet) _then)
      : super(_value, (v) => _then(v as _NoInternet));

  @override
  _NoInternet get _value => super._value as _NoInternet;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NoInternet(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.noInternet(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoInternet &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$NoInternetCopyWith<_NoInternet> get copyWith =>
      __$NoInternetCopyWithImpl<_NoInternet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) formValidationFailure,
  }) {
    return noInternet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
  }) {
    return noInternet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_FormValidationFailure value)
        formValidationFailure,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements Failure {
  const factory _NoInternet(String message) = _$_NoInternet;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoInternetCopyWith<_NoInternet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FormValidationFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$FormValidationFailureCopyWith(_FormValidationFailure value,
          $Res Function(_FormValidationFailure) then) =
      __$FormValidationFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$FormValidationFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$FormValidationFailureCopyWith<$Res> {
  __$FormValidationFailureCopyWithImpl(_FormValidationFailure _value,
      $Res Function(_FormValidationFailure) _then)
      : super(_value, (v) => _then(v as _FormValidationFailure));

  @override
  _FormValidationFailure get _value => super._value as _FormValidationFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FormValidationFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FormValidationFailure implements _FormValidationFailure {
  const _$_FormValidationFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.formValidationFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormValidationFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FormValidationFailureCopyWith<_FormValidationFailure> get copyWith =>
      __$FormValidationFailureCopyWithImpl<_FormValidationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) formValidationFailure,
  }) {
    return formValidationFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
  }) {
    return formValidationFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? formValidationFailure,
    required TResult orElse(),
  }) {
    if (formValidationFailure != null) {
      return formValidationFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_FormValidationFailure value)
        formValidationFailure,
  }) {
    return formValidationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
  }) {
    return formValidationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_FormValidationFailure value)? formValidationFailure,
    required TResult orElse(),
  }) {
    if (formValidationFailure != null) {
      return formValidationFailure(this);
    }
    return orElse();
  }
}

abstract class _FormValidationFailure implements Failure {
  const factory _FormValidationFailure(String message) =
      _$_FormValidationFailure;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormValidationFailureCopyWith<_FormValidationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
