import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/features/workouts/domain/repo/workout_repo.dart';
import 'package:t2t/shared/exceptions/failures.dart';

part 'exercise_list_cubit.freezed.dart';

part 'exercise_list_state.dart';

@injectable
class ExerciseListCubit extends Cubit<ExerciseListState> {
  ExerciseListCubit({required this.repo})
      : super(const ExerciseListState.initial());

  final WorkoutRepo repo;
  static const pageSize = 20;

  void fetchInitial({String? query, String? equipment, String? muscle}) async {
    String? eqp = equipment ?? state.mapOrNull(success: (e) => e.equipment ?? '');
    String? ms = muscle ?? state.mapOrNull(success: (e) => e.muscle ?? '');

    // print(eqp);
    // print(ms);

    emit(const ExerciseListState.loading());
    await _fetchData(0, pageSize, query, eqp, ms, []);
  }

  void fetchMore() async {
    state.maybeWhen(
      success: (records, hasReachedMax, query, muscle, equipment) {
        if (!hasReachedMax) {
          _fetchData(records.length, records.length + pageSize, query,
              equipment, muscle, records);
        }
      },
      orElse: () {},
    );
  }

  Future<void> _fetchData(
    int start,
    int end,
    String? query,
    String? equipment,
    String? muscle,
    List<Exercise> prevExercises,
  ) async {
    final result = await repo.fetchExercises(start, end,
        query: query, equipment: equipment, muscle: muscle);

    result.fold(
      (l) => emit(ExerciseListState.failure(l)),
      (r) {
        var finalList = [...prevExercises, ...r];
        return emit(
          ExerciseListState.success(
            records: finalList,
            hasReachedMax: finalList.length < pageSize,
            query: query,
            equipment: equipment,
            muscle: muscle,
          ),
        );
      },
    );
  }
}
