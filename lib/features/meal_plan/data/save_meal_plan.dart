import 'dart:convert';

import 'package:http/http.dart' as http;

class SaveMealPlan {
  saveQuizResponse(String gender, double height, double weight, int age,
      double activityFactor, List l1) async {
    var respList;
    const url =
        'http://testt2t.easycloud.in:8080/openbravo/ws/in.easycloud.ttot.TDEECalories?l=sai&p=welcome';
    var reqBody =jsonEncode(
      {
        'data': {
          'selectedPerson': gender,
          'weight': weight,
          'height': height,
          'age': age,
          'activityFactor': activityFactor,
          'vegetarian':  l1[0] == 'No' ? false : true,
          'dietGoal': '516CB12C434C418FA7595D422B2AFF93',
        },
      },
    );
    var res = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type' : 'application/json',
        'Content-Length' : reqBody.length.toString(),
      },
      body: reqBody,
    );
    var body = await jsonDecode(res.body) as Map<String, dynamic>;
    if (res.statusCode == 200) {
      if (body['response']['status'] == 0) {
        respList = body['response']['data'];
        print(respList[0]);
      }
    }
  }
}
