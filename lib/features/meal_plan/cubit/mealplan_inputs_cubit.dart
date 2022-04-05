import 'package:bloc/bloc.dart';
import 'package:t2t/features/meal_plan/data/save_meal_plan.dart';
part 'mealplan_inputs_state.dart';

class MealplanInputsCubit extends Cubit<MealPlanInputState> {
  MealplanInputsCubit() : super(MealPlanInputStateInitial());
  userinputRecords(
      int? age,
      String? gender,
      double? height,
      double? weight,
      double? activityfactor,
      List? userAnswers) async {
    await SaveMealPlan().saveQuizResponse(gender!,height!,weight!,age!,activityfactor!,userAnswers!);
  }
}
