import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle.freezed.dart';

@freezed
abstract class Muscle with _$Muscle {
  const factory Muscle({
    required String id,
    required String name,
    String? description,
  }) = _Muscle;
}
