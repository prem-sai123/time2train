import 'dart:convert';
import 'package:t2t/features/meal_plan/model/activity_level.dart';
import 'package:http/http.dart' as http;

class ActivityLevelList {
  Future<List<ActivityLevel>> fetchAcitityLevellist() async {
    String baseUrl =
        'https://testt2t.easycloud.in/openbravo/org.openbravo.service.json.jsonrest/TTT_activity_level?l=sai&p=welcome&_selectedProperties=id,name,activityFactor';
    List<ActivityLevel> list = [];

    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as Map<String, dynamic>;
        var resData = data['response'];
        for (var record in resData['data']) {
          ActivityLevel _activityResRes = ActivityLevel.fromJson(record);
          list.add(_activityResRes);
        }
      } else {
        return list;
      }
    } catch (err, stack) {
      print('$err,$stack');
    }
    return list;
  }
}
