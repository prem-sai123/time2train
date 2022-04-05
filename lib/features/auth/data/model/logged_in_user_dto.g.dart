// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoggedInUserDto _$$_LoggedInUserDtoFromJson(Map<String, dynamic> json) =>
    _$_LoggedInUserDto(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      clientId: json['client'] as String,
      orgId: json['organization'] as String,
    );

Map<String, dynamic> _$$_LoggedInUserDtoToJson(_$_LoggedInUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'client': instance.clientId,
      'organization': instance.orgId,
    };
