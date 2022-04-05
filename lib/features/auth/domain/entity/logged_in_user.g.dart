// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoggedInUser _$$_LoggedInUserFromJson(Map<String, dynamic> json) =>
    _$_LoggedInUser(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      clientId: json['clientId'] as String,
      orgId: json['orgId'] as String,
    );

Map<String, dynamic> _$$_LoggedInUserToJson(_$_LoggedInUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'clientId': instance.clientId,
      'orgId': instance.orgId,
    };
