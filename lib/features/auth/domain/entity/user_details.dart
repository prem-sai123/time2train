import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/auth/domain/entity/logged_in_user.dart';
import 'package:t2t/features/auth/domain/entity/user_settings.dart';

part 'user_details.freezed.dart';

@freezed
abstract class UserDetails with _$UserDetails {
  const factory UserDetails({
    required LoggedInUser user,
    UserSettings? settings,
  }) = _UserDetails;
}
