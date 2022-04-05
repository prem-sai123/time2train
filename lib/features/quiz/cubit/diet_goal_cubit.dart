import 'package:bloc/bloc.dart';
import 'package:t2t/features/quiz/data/diet_goal_list.dart';
import 'package:t2t/features/quiz/model/dietgoal.dart';

part 'diet_goal_state.dart';

class DietGoalCubit extends Cubit<DietGoalListState> {
  DietGoalCubit() : super(DietGoalListState(dietGoalList: []));
  fetchAcitivylevelRecords() async {
    List<DietGoal> resList =  await  DietGoalList().fetchDietGoalList();
    emit(DietGoalListState(dietGoalList: resList));
  }
}
