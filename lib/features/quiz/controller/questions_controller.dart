
import 'package:t2t/features/quiz/data/sample_data.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options']),
      )
      .toList();
  List<Question> get questions => _questions;
  final bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

}
