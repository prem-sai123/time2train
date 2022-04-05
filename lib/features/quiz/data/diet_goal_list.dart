import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:t2t/features/quiz/model/dietgoal.dart';

class DietGoalList {
  Future<List<DietGoal>> fetchDietGoalList() async {
    String baseUrl =
        'https://testt2t.easycloud.in/openbravo/org.openbravo.service.json.jsonrest/TTT_activity_level?l=sai&p=welcome&_selectedProperties=id,name';
    List<DietGoal> list = [];
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as Map<String, dynamic>;
        var resData = data['response'];
        for (var record in resData['data']) {
          DietGoal _dietGoalListRes = DietGoal.fromJson(record);
          list.add(_dietGoalListRes);
          print(list.length);
        }
      }
      else{
        return list;
      }
    } catch (err, stack) {
      print('$err,$stack');
    }
    return list;
  }
}
