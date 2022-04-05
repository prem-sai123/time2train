abstract class Constants {
  static const appName = 'T2T';
  static const baseUrl = 'https://testt2t.easycloud.in/openbravo';
  static const jsonBaseUrl = '$baseUrl/org.openbravo.service.json.jsonrest';
  static const wsBaseUrl = '$baseUrl/ws';
  static const prefAppVersion = 'AppVersion';
  static const userRequestTimeoutInSec = 5;
}

abstract class CustomWebServices {
  static const createUser = '${Constants.wsBaseUrl}/in.easycloud.ttot.PostUser';
  static const getUserDetails = '${Constants.wsBaseUrl}/in.easycloud.ttot.TTOT_Response';
}

abstract class Entities {
  static const preference = 'ADPreference';
  static const exercise = 'TTT_Exercise';
  static const muscle = 'TTT_Muscles';
  static const equipment = 'TTT_Equipment';
}
