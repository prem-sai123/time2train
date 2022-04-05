part of 'fetch_activity_level_cubit.dart';

abstract class FetchActivityLevelState {}

class FetchActivityLevelInitial extends FetchActivityLevelState {}
class FetchActivityLevelLoading extends FetchActivityLevelState {}
class FetchActivityLevelSuccess extends FetchActivityLevelState {
  List<ActivityLevel> resList;
  FetchActivityLevelSuccess(this.resList);
}
class FetchActivityLevelFailure extends FetchActivityLevelState {}