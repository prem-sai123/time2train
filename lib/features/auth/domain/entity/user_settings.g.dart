// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettings _$$_UserSettingsFromJson(Map<String, dynamic> json) =>
    _$_UserSettings(
      speedPercentage: (json['speedPercentage'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      dailyCalories: (json['dailyCalories'] as num).toDouble(),
      activityLevel: json['activityLevel'] as String,
      dietGoal: json['dietGoal'] as String,
      isVegetarian: json['isVegetarian'] as bool,
    );

Map<String, dynamic> _$$_UserSettingsToJson(_$_UserSettings instance) =>
    <String, dynamic>{
      'speedPercentage': instance.speedPercentage,
      'height': instance.height,
      'weight': instance.weight,
      'dailyCalories': instance.dailyCalories,
      'activityLevel': instance.activityLevel,
      'dietGoal': instance.dietGoal,
      'isVegetarian': instance.isVegetarian,
    };
