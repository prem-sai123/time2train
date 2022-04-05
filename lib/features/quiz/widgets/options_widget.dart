import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t2t/features/quiz/controller/questions_controller.dart';

class options_widget extends StatefulWidget {
  const options_widget({
    Key? key,
    required this.index,
    this.option,
    required this.press,
  }) : super(key: key);
  final int index;
  final String? option;
  final VoidCallback press;

  @override
  State<options_widget> createState() => _options_widgetState();
}

class _options_widgetState extends State<options_widget> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qCtlr) {
          return InkWell(
            onTap: widget.press,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(25),
                //color: getTheRightColor(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      '${widget.option}',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.purple,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
