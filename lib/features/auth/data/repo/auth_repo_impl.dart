import 'dart:convert';
import 'dart:developer';

import 'package:core/core.dart' as core;
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:t2t/features/auth/data/model/logged_in_user_dto.dart';
import 'package:t2t/features/auth/data/model/user_settings_dto.dart';
import 'package:t2t/features/auth/domain/entity/logged_in_user.dart';
import 'package:t2t/features/auth/domain/entity/user_details.dart';
import 'package:t2t/features/auth/domain/entity/user_settings.dart';
import 'package:t2t/features/auth/domain/repo/auth_repo.dart';
import 'package:t2t/shared/app_logger.dart';
import 'package:t2t/shared/constants.dart';
import 'package:t2t/shared/exceptions/failures.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  static const String _userKey = 'user';
  static const String _settingsKey = 'settings';

  final http.Client client;
  final GoogleSignIn googleSignIn;

  AuthRepoImpl({
    required this.client,
    required this.googleSignIn,
  });

  @override
  Future<Either<Failure, UserDetails>> getPersistedUser() async {
    try {
      var storage = const FlutterSecureStorage();
      var userSource = await storage.read(key: _userKey);

      if (userSource == null) {
        return left(const Failure.serverFailure('Could not get user details'));
      }
      var userData = jsonDecode(userSource) as Map<String, dynamic>;
      var user = LoggedInUser.fromJson(userData);

      var settingsSource = await storage.read(key: _settingsKey);
      UserSettings? settings;

      if (settingsSource != null) {
        var userSettings = jsonDecode(settingsSource) as Map<String, dynamic>;
        settings = UserSettings.fromJson(userSettings);
      }

      return right(UserDetails(user: user, settings: settings));
    } catch (e, st) {
      logError(e, st, 'could not get persisted user details');
      return left(const Failure.serverFailure('Could not get user details'));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      final isUserLoggedIn = await googleSignIn.isSignedIn();
      if (!isUserLoggedIn) return false;
      var either = await getPersistedUser();
      if (either.isLeft()) return false;
      return either.fold((l) => false, (r) => true);
    } catch (e, st) {
      logError(e, st, 'Could not check for login user status');
      return false;
    }
  }

  @override
  Future<Either<Failure, bool>> persistUser(UserDetails userDetails) async {
    try {
      var storage = const FlutterSecureStorage();
      await storage.write(
          key: _userKey, value: jsonEncode(userDetails.user.toJson()));
      if (userDetails.settings != null) {
        await storage.write(
            key: _settingsKey,
            value: jsonEncode(userDetails.settings!.toJson()));
      }
      return right(true);
    } catch (e, st) {
      logError(e, st, 'Could not persist user');
      return left(const Failure.serverFailure('Could not persist user'));
    }
  }

  @override
  Future<Either<Failure, UserDetails>> signInWithGoogle() async {
    const String defErrMsg = 'Could not sign in. Please try again later';

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        try {
          final FirebaseAuth auth = FirebaseAuth.instance;
          final UserCredential userCredential =
              await auth.signInWithCredential(credential);

          final user = userCredential.user;

          if (user != null && user.email != null) {
            for (int i = 0; i < 6; i++) {
              // wait for 5 secs. so that firebase function will get called and
              // user record will be created for logged in user
              await Future.delayed(
                  const Duration(seconds: Constants.userRequestTimeoutInSec));

              var userDetails = await getUserDetails(user.email!, user.uid);
              if (userDetails != null) {

                userDetails = userDetails.copyWith(
                  user: userDetails.user.copyWith(
                    password: user.uid
                  ),
                );

                return right(userDetails);
              }
            }
          }
        } on FirebaseAuthException catch (e, st) {
          logError(e, st, defErrMsg);
          if (e.code == 'account-exists-with-different-credential') {
            return left(const Failure.serverFailure(
                'The account already exists with a different credential.'));
          } else if (e.code == 'invalid-credential') {
            return left(const Failure.serverFailure(
                'Error occurred while accessing credentials. Try again.'));
          }
        } catch (e, st) {
          logError(e, st, defErrMsg);
          return left(const Failure.serverFailure(
              'Error occurred using Google Sign-In. Try again.'));
        }
      }
    } catch (e, st) {
      logError(e, st, defErrMsg);
    }
    return left(const Failure.serverFailure(defErrMsg));
  }

  Future<UserDetails?> getUserDetails(String username, String password,
      [String defErrMsg = 'Could not fetch user details']) async {
    final url = '${CustomWebServices.getUserDetails}?username=$username';
    log(url);
    final data = await core.safeApiCall(
      () => client.get(Uri.parse(url),
          headers: core.getAuthHeader(username, password)),
      defErrMsg,
      logResponseBody: true,
    );

    return data.fold(
      (l) => null,
      (r) {
        final details = ((r as List<dynamic>)[0]) as Map<String, dynamic>;
        if (details['user'] == null) return null;

        final user = LoggedInUserDto.fromJson(details['user']).toDomain();
        final settings = details.containsKey('userSettings')
            ? UserSettingsDto.fromJson(details['userSettings']).toDomain()
            : null;

        return UserDetails(user: user, settings: settings);
      },
    );
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    const String defErrMsg = 'Could not logout';
    try {
      await FirebaseAuth.instance.signOut();

      try {
        await googleSignIn.signOut();
        await googleSignIn.disconnect();
      } catch (e) {

      }
      return right(true);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure.serverFailure(defErrMsg));
    }
  }
}
