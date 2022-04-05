part of 'muscles_cubit.dart';

@freezed
abstract class MusclesState with _$MusclesState {
  const factory MusclesState.initial() = _Initial;

  const factory MusclesState.loading() = _Loading;

  const factory MusclesState.success({
    required List<Muscle> records,
    required bool hasReachedMax,
  }) = _Success;

  const factory MusclesState.failure(Failure failure) = _Failure;
}
