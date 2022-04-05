import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/features/workouts/domain/repo/workout_repo.dart';
import 'package:t2t/shared/exceptions/failures.dart';

part 'muscles_cubit.freezed.dart';

part 'muscles_state.dart';

@injectable
class MusclesCubit extends Cubit<MusclesState> {
  MusclesCubit({required this.repo})
      : super(const MusclesState.initial());

  final WorkoutRepo repo;
  static const pageSize = 20;

  void fetchInitial() async {
    emit(const MusclesState.loading());
    await _fetchData(0, pageSize, []);
  }

  void fetchMore() async {
    state.maybeWhen(
      success: (records, hasReachedMax) {
        if (!hasReachedMax) {
          _fetchData(records.length, records.length + pageSize, records);
        }
      },
      orElse: () {},
    );
  }

  Future<void> _fetchData(
      int start,
      int end,
      List<Muscle> prevRecords,
      ) async {
    final result = await repo.fetchMuscles(start, end);

    result.fold(
          (l) => emit(MusclesState.failure(l)),
          (r) {
        var finalList = [...prevRecords, ...r];
        return emit(
          MusclesState.success(
            records: finalList,
            hasReachedMax: finalList.length < pageSize,
          ),
        );
      },
    );
  }
}
