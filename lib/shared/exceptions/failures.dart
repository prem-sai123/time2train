import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverFailure(String message) = _ServerFailure;
  const factory Failure.noInternet(String message) = _NoInternet;
  const factory Failure.formValidationFailure(String message) = _FormValidationFailure;
}
