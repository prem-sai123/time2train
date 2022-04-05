import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t2t/features/quiz/controller/questions_controller.dart';
import 'package:t2t/features/quiz/widgets/options_widget.dart';

import '../data/sample_data.dart';

class question_widget extends StatelessWidget {
  question_widget({
    Key? key,
    required this.question,
    required this.onAnswered,
  }) : super(key: key);

  final Question question;
  final Function(String) onAnswered;
  final QuestionController qController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(question.id.toString(),style: const TextStyle(color: Colors.black,)),
            const Text('/',style: TextStyle(color: Colors.black)),
            Text(sample_data.length.toString(),style: const TextStyle(color: Colors.black,fontSize: 10),textAlign:TextAlign.end),
          ],
        ),
        Text(
          question.question!,
          style: const TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20 / 2,
        ),
        ...List.generate(
          question.options!.length,
          (index) => options_widget(
            index: index,
            press: () => onAnswered(question.options![index]),
            option: question.options![index],
          ),
        ),
      ],
    );
  }
}
