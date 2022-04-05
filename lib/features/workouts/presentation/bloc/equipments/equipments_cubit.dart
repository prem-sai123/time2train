import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/features/workouts/domain/repo/workout_repo.dart';
import 'package:t2t/shared/exceptions/failures.dart';

part 'equipments_cubit.freezed.dart';

part 'equipments_state.dart';

@injectable
class EquipmentsCubit extends Cubit<EquipmentsState> {
  EquipmentsCubit({required this.repo})
      : super(const EquipmentsState.initial());

  final WorkoutRepo repo;
  static const pageSize = 20;

  void fetchInitial() async {
    emit(const EquipmentsState.loading());
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
      List<Equipment> prevRecords,
      ) async {
    final result = await repo.fetchEquipments(start, end);

    result.fold(
          (l) => emit(EquipmentsState.failure(l)),
          (r) {
        var finalList = [...prevRecords, ...r];
        return emit(
          EquipmentsState.success(
            records: finalList,
            hasReachedMax: finalList.length < pageSize,
          ),
        );
      },
    );
  }
}
