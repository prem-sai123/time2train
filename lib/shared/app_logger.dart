import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/auth/domain/entity/logged_in_user.dart';

Future<void> logError(Object e, StackTrace st, String message,
    {String? serverResponse, String? defErrMsg}) async {
  if (kDebugMode) {
    log(message, error: e, stackTrace: st);
  } else {
    if (locator.isRegistered<LoggedInUser>()) {
      var user = locator.get<LoggedInUser>();
      FirebaseCrashlytics.instance
          .setCustomKey('user_name', user.username);
      FirebaseCrashlytics.instance.setCustomKey('user_id', user.id);
    }

    try {
      FirebaseCrashlytics.instance.setCustomKey(
          'server_response', serverResponse ?? 'No server response found');
      if (defErrMsg != null) {
        FirebaseCrashlytics.instance.setCustomKey('def_err_msg', defErrMsg);
      }
      await FirebaseCrashlytics.instance
          .log(serverResponse ?? 'No server response found');
      await FirebaseCrashlytics.instance.recordError(e, st, reason: message);
    } catch (e, st) {
      FirebaseCrashlytics.instance.recordError(e, st,
          reason: 'Exception when recording error through Crashlytics');
    }
  }
}
