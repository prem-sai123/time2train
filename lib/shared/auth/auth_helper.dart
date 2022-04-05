import 'package:core/core.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/auth/domain/entity/logged_in_user.dart';
import 'package:t2t/features/auth/domain/entity/user_details.dart';

abstract class AuthHelper {
  Map<String, String> authHeader2(String username, String password) =>
      getAuthHeader(username, password);

  Map<String, String> authHeader() {
    var user = locator.get<UserDetails>();
    return getAuthHeader(user.user.username, user.user.password);
  }

  LoggedInUser getLoggedInUser() {
    return locator.get<UserDetails>().user;
  }
}
