// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDetailsTearOff {
  const _$UserDetailsTearOff();

  _UserDetails call({required LoggedInUser user, UserSettings? settings}) {
    return _UserDetails(
      user: user,
      settings: settings,
    );
  }
}

/// @nodoc
const $UserDetails = _$UserDetailsTearOff();

/// @nodoc
mixin _$UserDetails {
  LoggedInUser get user => throw _privateConstructorUsedError;
  UserSettings? get settings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res>;
  $Res call({LoggedInUser user, UserSettings? settings});

  $LoggedInUserCopyWith<$Res> get user;
  $UserSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res> implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  final UserDetails _value;
  // ignore: unused_field
  final $Res Function(UserDetails) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedInUser,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as UserSettings?,
    ));
  }

  @override
  $LoggedInUserCopyWith<$Res> get user {
    return $LoggedInUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserSettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $UserSettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailsCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$UserDetailsCopyWith(
          _UserDetails value, $Res Function(_UserDetails) then) =
      __$UserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({LoggedInUser user, UserSettings? settings});

  @override
  $LoggedInUserCopyWith<$Res> get user;
  @override
  $UserSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class __$UserDetailsCopyWithImpl<$Res> extends _$UserDetailsCopyWithImpl<$Res>
    implements _$UserDetailsCopyWith<$Res> {
  __$UserDetailsCopyWithImpl(
      _UserDetails _value, $Res Function(_UserDetails) _then)
      : super(_value, (v) => _then(v as _UserDetails));

  @override
  _UserDetails get _value => super._value as _UserDetails;

  @override
  $Res call({
    Object? user = freezed,
    Object? settings = freezed,
  }) {
    return _then(_UserDetails(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedInUser,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as UserSettings?,
    ));
  }
}

/// @nodoc

class _$_UserDetails implements _UserDetails {
  const _$_UserDetails({required this.user, this.settings});

  @override
  final LoggedInUser user;
  @override
  final UserSettings? settings;

  @override
  String toString() {
    return 'UserDetails(user: $user, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetails &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  _$UserDetailsCopyWith<_UserDetails> get copyWith =>
      __$UserDetailsCopyWithImpl<_UserDetails>(this, _$identity);
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {required LoggedInUser user, UserSettings? settings}) = _$_UserDetails;

  @override
  LoggedInUser get user => throw _privateConstructorUsedError;
  @override
  UserSettings? get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsCopyWith<_UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
