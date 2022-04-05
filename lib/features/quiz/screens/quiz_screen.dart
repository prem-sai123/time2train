import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/features/meal_plan/cubit/mealplan_inputs_cubit.dart';
import 'package:t2t/features/quiz/controller/questions_controller.dart';
import '../widgets/question_widget.dart';
import 'package:get/get.dart';

class QuizScreen extends StatefulWidget {
  final int? age;
  final String? gender;
  final double? height;
  final double? weight;
  final double? activityFactor;
  const QuizScreen(
      {Key? key,
      required this.age,
      required this.gender,
      required this.height,
      required this.weight,
      required this.activityFactor})
      : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  PageController pg = PageController();
  List<String> _userAnswers = [];
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Questions',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 500,
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pg,
                        itemBuilder: (context, index) => question_widget(
                          question: _questionController.questions[index],
                          onAnswered: (answer) {
                            _userAnswers.add(answer);
                            index == _questionController.questions.length - 1
                                ? BlocProvider.of<MealplanInputsCubit>(context)
                                    .userinputRecords(
                                        widget.age,
                                        widget.gender,
                                        widget.height,
                                        widget.weight,
                                        widget.activityFactor,
                                        _userAnswers)
                                : pg.animateToPage(pg.page!.toInt() + 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                          },
                        ),
                        itemCount: _questionController.questions.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onLoading() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pop(context); //pop dialog
    });
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircularProgressIndicator(color: Colors.white),
                  Text('Calculating MealPlan'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
