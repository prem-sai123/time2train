part of 'equipments_cubit.dart';

@freezed
abstract class EquipmentsState with _$EquipmentsState {
  const factory EquipmentsState.initial() = _Initial;

  const factory EquipmentsState.loading() = _Loading;

  const factory EquipmentsState.success({
    required List<Equipment> records,
    required bool hasReachedMax,
  }) = _Success;

  const factory EquipmentsState.failure(Failure failure) = _Failure;
}
