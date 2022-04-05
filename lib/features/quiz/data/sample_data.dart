import 'package:t2t/features/quiz/model/dietgoal.dart';

class Question {
  final int? id;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.options});
}

const List sample_data = [
  {
    'id': 1,
    'question':
    'Would you like Your Meal Plan to be strictly vegetarian',
    'options': ['Yes', 'No'],
  },
  {
    'id': 2,
    'question': 'Which Unit of Measurement are you most comfortable with using?',
    'options': ['Metric (Global)','Imperial (United States)'],
  },
  {
    'id': 3,
    'question': 'What are your goals? \r\n Do you want to..',
    'options': ['Mass Gainer', 'Muscle building (Moderate Carbs)', 'General Health Maintenance','Fat Loss (Low carb Diet)','Keto'],
  },
];