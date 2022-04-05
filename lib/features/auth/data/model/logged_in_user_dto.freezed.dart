// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logged_in_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoggedInUserDto _$LoggedInUserDtoFromJson(Map<String, dynamic> json) {
  return _LoggedInUserDto.fromJson(json);
}

/// @nodoc
class _$LoggedInUserDtoTearOff {
  const _$LoggedInUserDtoTearOff();

  _LoggedInUserDto call(
      {required String id,
      required String username,
      required String password,
      @JsonKey(name: 'client') required String clientId,
      @JsonKey(name: 'organization') required String orgId}) {
    return _LoggedInUserDto(
      id: id,
      username: username,
      password: password,
      clientId: clientId,
      orgId: orgId,
    );
  }

  LoggedInUserDto fromJson(Map<String, Object> json) {
    return LoggedInUserDto.fromJson(json);
  }
}

/// @nodoc
const $LoggedInUserDto = _$LoggedInUserDtoTearOff();

/// @nodoc
mixin _$LoggedInUserDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'client')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization')
  String get orgId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedInUserDtoCopyWith<LoggedInUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedInUserDtoCopyWith<$Res> {
  factory $LoggedInUserDtoCopyWith(
          LoggedInUserDto value, $Res Function(LoggedInUserDto) then) =
      _$LoggedInUserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String username,
      String password,
      @JsonKey(name: 'client') String clientId,
      @JsonKey(name: 'organization') String orgId});
}

/// @nodoc
class _$LoggedInUserDtoCopyWithImpl<$Res>
    implements $LoggedInUserDtoCopyWith<$Res> {
  _$LoggedInUserDtoCopyWithImpl(this._value, this._then);

  final LoggedInUserDto _value;
  // ignore: unused_field
  final $Res Function(LoggedInUserDto) _then;

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
abstract class _$LoggedInUserDtoCopyWith<$Res>
    implements $LoggedInUserDtoCopyWith<$Res> {
  factory _$LoggedInUserDtoCopyWith(
          _LoggedInUserDto value, $Res Function(_LoggedInUserDto) then) =
      __$LoggedInUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String username,
      String password,
      @JsonKey(name: 'client') String clientId,
      @JsonKey(name: 'organization') String orgId});
}

/// @nodoc
class __$LoggedInUserDtoCopyWithImpl<$Res>
    extends _$LoggedInUserDtoCopyWithImpl<$Res>
    implements _$LoggedInUserDtoCopyWith<$Res> {
  __$LoggedInUserDtoCopyWithImpl(
      _LoggedInUserDto _value, $Res Function(_LoggedInUserDto) _then)
      : super(_value, (v) => _then(v as _LoggedInUserDto));

  @override
  _LoggedInUserDto get _value => super._value as _LoggedInUserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? clientId = freezed,
    Object? orgId = freezed,
  }) {
    return _then(_LoggedInUserDto(
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
class _$_LoggedInUserDto extends _LoggedInUserDto {
  const _$_LoggedInUserDto(
      {required this.id,
      required this.username,
      required this.password,
      @JsonKey(name: 'client') required this.clientId,
      @JsonKey(name: 'organization') required this.orgId})
      : super._();

  factory _$_LoggedInUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedInUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey(name: 'client')
  final String clientId;
  @override
  @JsonKey(name: 'organization')
  final String orgId;

  @override
  String toString() {
    return 'LoggedInUserDto(id: $id, username: $username, password: $password, clientId: $clientId, orgId: $orgId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedInUserDto &&
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
  _$LoggedInUserDtoCopyWith<_LoggedInUserDto> get copyWith =>
      __$LoggedInUserDtoCopyWithImpl<_LoggedInUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedInUserDtoToJson(this);
  }
}

abstract class _LoggedInUserDto extends LoggedInUserDto {
  const factory _LoggedInUserDto(
          {required String id,
          required String username,
          required String password,
          @JsonKey(name: 'client') required String clientId,
          @JsonKey(name: 'organization') required String orgId}) =
      _$_LoggedInUserDto;
  const _LoggedInUserDto._() : super._();

  factory _LoggedInUserDto.fromJson(Map<String, dynamic> json) =
      _$_LoggedInUserDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'client')
  String get clientId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'organization')
  String get orgId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoggedInUserDtoCopyWith<_LoggedInUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
