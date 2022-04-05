import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/auth/domain/entity/user_settings.dart';

part 'user_settings_dto.freezed.dart';

part 'user_settings_dto.g.dart';

@freezed
abstract class UserSettingsDto implements _$UserSettingsDto {
  const UserSettingsDto._();

  const factory UserSettingsDto({
    required double speedPercentage,
    required double height,
    required double weight,
    required double dailyCalories,
    required String activityLevel,
    required String dietGoal,
    required bool isVegetarian,
  }) = _UserSettingsDto;

  factory UserSettingsDto.fromDomain(UserSettings details) {
    return UserSettingsDto(
      speedPercentage: details.speedPercentage,
      height: details.height,
      weight: details.weight,
      dailyCalories: details.dailyCalories,
      activityLevel: details.activityLevel,
      dietGoal: details.dietGoal,
      isVegetarian: details.isVegetarian,
    );
  }

  UserSettings toDomain() {
    return UserSettings(
      speedPercentage: speedPercentage,
      height: height,
      weight: weight,
      dailyCalories: dailyCalories,
      activityLevel: activityLevel,
      dietGoal: dietGoal,
      isVegetarian: isVegetarian,
    );
  }

  factory UserSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsDtoFromJson(json);
}
