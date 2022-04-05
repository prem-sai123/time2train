part of 'mealplan_inputs_cubit.dart';

abstract class MealPlanInputState {}

class MealPlanInputStateInitial extends MealPlanInputState {}
class MealPlanInputStateLoading extends MealPlanInputState {}
class MealPlanInputStateSuccess extends MealPlanInputState {}
class MealPlanInputStateFailure extends MealPlanInputState {}