import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:t2t/features/meal_plan/cubit/fetch_activity_level_cubit.dart';
import 'package:t2t/features/meal_plan/cubit/mealplan_inputs_cubit.dart';
import 'package:t2t/features/quiz/screens/quiz_screen.dart';

import '../model/activity_level.dart';

class UserInputScreen extends StatefulWidget {
  const UserInputScreen({Key? key}) : super(key: key);

  @override
  State<UserInputScreen> createState() => _UserInputScreenState();
}

class _UserInputScreenState extends State<UserInputScreen> {
  final _ageEditingController = TextEditingController(text: 10.toString());
  final _weightEditingController = TextEditingController(text: 50.toString());
  final _heightEditingController = TextEditingController(text: 33.toString());
  bool _isCM = false;
  bool _isKG = true;
  double? selectedActivityFactor;
  String? selectedGender;
  List<ActivityLevel> l1 = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Customize Your Meal Plan'),
        elevation: 5,
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.5, color: Colors.white)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: (MediaQuery.of(context).size.width / 2) - 2,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _ageEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Age (Years old)',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 2) - 60,
                  child: DropdownButtonHideUnderline(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side:
                              const BorderSide(width: 0.8, color: Colors.white),
                        ),
                      ),
                      //margin: const EdgeInsets.symmetric(horizontal: 10),
                      //padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: DropdownButton(
                        isExpanded: true,
                        elevation: 8,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                        hint: const Center(
                          child: Text('Gender',
                              style: TextStyle(color: Colors.white)),
                        ),
                        value: selectedGender,
                        items: <String>['Men', 'Women']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,textAlign: TextAlign.center),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedGender = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: (MediaQuery.of(context).size.width / 2) - 2,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _heightEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Height',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Flexible(
                  child: RollingSwitch.widget(
                    onChanged: (bool state) {
                      _isCM = state;
                      print('IS FT : $_isCM');
                    },
                    initialState: _isCM,
                    rollingInfoRight: const RollingWidgetInfo(
                        text: Text('FT'), backgroundColor: Colors.purple),
                    rollingInfoLeft: const RollingWidgetInfo(
                        text: Text('CM'), backgroundColor: Colors.green),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: (MediaQuery.of(context).size.width / 2) - 2,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _weightEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Weight',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Flexible(
                  child: RollingSwitch.widget(
                    initialState: _isKG,
                    onChanged: (bool state) {
                      _isKG = state;
                      print('IS KG : $_isKG');
                    },
                    rollingInfoRight: const RollingWidgetInfo(
                        text: Text('KG'), backgroundColor: Colors.purple),
                    rollingInfoLeft: const RollingWidgetInfo(
                        text: Text('LBS'), backgroundColor: Colors.green),
                  ),
                ),
              ],
            ),
            BlocBuilder<FetchActivityLevelCubit, FetchActivityLevelState>(
                builder: (context, state) {
              if (state is FetchActivityLevelSuccess) {
                l1 = state.resList;
              }
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.all(10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    elevation: 8,
                    style: const TextStyle(color: Colors.green, fontSize: 16),
                    icon: const Icon(Icons.arrow_circle_down),
                    iconDisabledColor: Colors.red,
                    iconEnabledColor: Colors.green,
                    value: selectedActivityFactor,
                    items: l1.map((item) {
                      return DropdownMenuItem(
                        child: Text(
                          item.name!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        value: item.activityFactor,
                      );
                    }).toList(),
                    onChanged: (double? newValue) {
                      setState(
                        () {
                          selectedActivityFactor = newValue!;
                        },
                      );
                    },
                  ),
                ),
              );
            }),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              width: double.infinity,
              child: FloatingActionButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => MealplanInputsCubit(),
                        child: QuizScreen(
                          age: int.parse(_ageEditingController.text),
                          height: _isCM
                              ? double.parse(_heightEditingController.text)
                              : double.parse(_heightEditingController.text) *
                                  0.03280839895,
                          gender: selectedGender,
                          activityFactor: selectedActivityFactor,
                          weight: _isKG
                              ? double.parse(_weightEditingController.text)
                              : double.parse(_weightEditingController.text) *
                                  0.45359237,
                        ),
                      ),
                    ),
                  );
                },
                child: const Text('Continue'),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
