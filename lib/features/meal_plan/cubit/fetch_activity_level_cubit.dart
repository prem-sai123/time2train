import 'package:bloc/bloc.dart';
import 'package:t2t/features/meal_plan/data/activity_list.dart';
import 'package:t2t/features/meal_plan/model/activity_level.dart';

part 'fetch_activity_level_state.dart';

class FetchActivityLevelCubit extends Cubit<FetchActivityLevelState> {
  FetchActivityLevelCubit() : super(FetchActivityLevelInitial());
  fetchAcitivylevelRecords() async {
    List<ActivityLevel> resList =
        await ActivityLevelList().fetchAcitityLevellist();
    emit(FetchActivityLevelSuccess(resList));
    if (resList != null) {
      emit(FetchActivityLevelSuccess(resList));
    }else{
      emit(FetchActivityLevelFailure());
    }
  }
}
