import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

@freezed
abstract class UserSettings implements _$UserSettings {
  const UserSettings._();

  const factory UserSettings({
    required double speedPercentage,
    required double height,
    required double weight,
    required double dailyCalories,
    required String activityLevel,
    required String dietGoal,
    required bool isVegetarian,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
