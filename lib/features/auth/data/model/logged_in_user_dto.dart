import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2t/features/auth/domain/entity/logged_in_user.dart';

part 'logged_in_user_dto.freezed.dart';

part 'logged_in_user_dto.g.dart';

@freezed
abstract class LoggedInUserDto implements _$LoggedInUserDto {
  const LoggedInUserDto._();

  const factory LoggedInUserDto({
    required String id,
    required String username,
    required String password,
    @JsonKey(name: 'client') required String clientId,
    @JsonKey(name: 'organization') required String orgId,
  }) = _LoggedInUserDto;

  factory LoggedInUserDto.fromGoogleSignIn(
      User firebaseUser, Map<String, dynamic> obJson, String password) {
    return LoggedInUserDto(
      id: obJson['id'].toString(),
      username: obJson['username'].toString(),
      password: password,
      clientId: obJson['client'],
      orgId: obJson['organization'],
    );
  }

  LoggedInUser toDomain() {
    return LoggedInUser(
      id: id,
      username: username,
      password: password,
      clientId: clientId,
      orgId: orgId,
    );
  }

  factory LoggedInUserDto.fromJson(Map<String, dynamic> json) =>
      _$LoggedInUserDtoFromJson(json);
}
