// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logged_in_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoggedInUser _$LoggedInUserFromJson(Map<String, dynamic> json) {
  return _LoggedInUser.fromJson(json);
}

/// @nodoc
class _$LoggedInUserTearOff {
  const _$LoggedInUserTearOff();

  _LoggedInUser call(
      {required String id,
      required String username,
      required String password,
      required String clientId,
      required String orgId}) {
    return _LoggedInUser(
      id: id,
      username: username,
      password: password,
      clientId: clientId,
      orgId: orgId,
    );
  }

  LoggedInUser fromJson(Map<String, Object> json) {
    return LoggedInUser.fromJson(json);
  }
}

/// @nodoc
const $LoggedInUser = _$LoggedInUserTearOff();

/// @nodoc
mixin _$LoggedInUser {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get orgId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedInUserCopyWith<LoggedInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedInUserCopyWith<$Res> {
  factory $LoggedInUserCopyWith(
          LoggedInUser value, $Res Function(LoggedInUser) then) =
      _$LoggedInUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String username,
      String password,
      String clientId,
      String orgId});
}

/// @nodoc
class _$LoggedInUserCopyWithImpl<$Res> implements $LoggedInUserCopyWith<$Res> {
  _$LoggedInUserCopyWithImpl(this._value, this._then);

  final LoggedInUser _value;
  // ignore: unused_field
  final $Res Function(LoggedInUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? clientId = freezed,
    Object? orgId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      orgId: orgId == freezed
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoggedInUserCopyWith<$Res>
    implements $LoggedInUserCopyWith<$Res> {
  factory _$LoggedInUserCopyWith(
          _LoggedInUser value, $Res Function(_LoggedInUser) then) =
      __$LoggedInUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String username,
      String password,
      String clientId,
      String orgId});
}

/// @nodoc
class __$LoggedInUserCopyWithImpl<$Res> extends _$LoggedInUserCopyWithImpl<$Res>
    implements _$LoggedInUserCopyWith<$Res> {
  __$LoggedInUserCopyWithImpl(
      _LoggedInUser _value, $Res Function(_LoggedInUser) _then)
      : super(_value, (v) => _then(v as _LoggedInUser));

  @override
  _LoggedInUser get _value => super._value as _LoggedInUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? clientId = freezed,
    Object? orgId = freezed,
  }) {
    return _then(_LoggedInUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      orgId: orgId == freezed
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedInUser extends _LoggedInUser {
  const _$_LoggedInUser(
      {required this.id,
      required this.username,
      required this.password,
      required this.clientId,
      required this.orgId})
      : super._();

  factory _$_LoggedInUser.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedInUserFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String password;
  @override
  final String clientId;
  @override
  final String orgId;

  @override
  String toString() {
    return 'LoggedInUser(id: $id, username: $username, password: $password, clientId: $clientId, orgId: $orgId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedInUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(orgId);

  @JsonKey(ignore: true)
  @override
  _$LoggedInUserCopyWith<_LoggedInUser> get copyWith =>
      __$LoggedInUserCopyWithImpl<_LoggedInUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedInUserToJson(this);
  }
}

abstract class _LoggedInUser extends LoggedInUser {
  const factory _LoggedInUser(
      {required String id,
      required String username,
      required String password,
      required String clientId,
      required String orgId}) = _$_LoggedInUser;
  const _LoggedInUser._() : super._();

  factory _LoggedInUser.fromJson(Map<String, dynamic> json) =
      _$_LoggedInUser.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get clientId => throw _privateConstructorUsedError;
  @override
  String get orgId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoggedInUserCopyWith<_LoggedInUser> get copyWith =>
      throw _privateConstructorUsedError;
}
