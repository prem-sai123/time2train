import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ExternalsLibsInjectableModule {
  @lazySingleton
  http.Client get client {
    final httpClient = HttpClient();
    if (kDebugMode) {
      httpClient.badCertificateCallback = (_, __, ___) => true;
    }
    final http.Client client = IOClient(httpClient);
    return client;
  }

  @lazySingleton
  GoogleSignIn get gSignIn => GoogleSignIn();
}
