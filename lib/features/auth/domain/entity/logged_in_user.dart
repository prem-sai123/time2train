import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_in_user.freezed.dart';

part 'logged_in_user.g.dart';

@freezed
abstract class LoggedInUser implements _$LoggedInUser {
  const LoggedInUser._();

  const factory LoggedInUser({
    required String id,
    required String username,
    required String password,
    required String clientId,
    required String orgId,
  }) = _LoggedInUser;

  factory LoggedInUser.fromJson(Map<String, dynamic> json) => _$LoggedInUserFromJson(json);
}
