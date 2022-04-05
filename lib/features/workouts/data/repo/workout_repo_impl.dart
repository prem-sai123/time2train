import 'dart:developer';

import 'package:core/core.dart' as core;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:t2t/features/workouts/data/model/equipment_dto.dart';
import 'package:t2t/features/workouts/data/model/exercise_dto.dart';
import 'package:t2t/features/workouts/data/model/muscle_dto.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/features/workouts/domain/repo/workout_repo.dart';
import 'package:t2t/shared/app_logger.dart';
import 'package:t2t/shared/auth/auth_helper.dart';
import 'package:t2t/shared/constants.dart';
import 'package:t2t/shared/exceptions/failures.dart';
import 'package:dartz/dartz.dart' as dartz;

@LazySingleton(as: WorkoutRepo)
class WorkoutRepoImpl with AuthHelper implements WorkoutRepo {
  WorkoutRepoImpl({required this.client});

  final http.Client client;

  @override
  Future<void> completeInstantWorkout(String workoutId) {
    // TODO: implement completeInstantWorkout
    throw UnimplementedError();
  }

  @override
  Future<void> completeSet(String workoutExerciseId, String setId) {
    // TODO: implement completeSet
    throw UnimplementedError();
  }

  @override
  Future<dartz.Either<Failure, List<Equipment>>> fetchEquipments(
      int start, int end) async {
    const String defErrMsg = 'Could not fetch equipments';
    try {
      final url =
          '${Constants.jsonBaseUrl}/${Entities.equipment}?_startRow=$start&_endRow=$end';
      final data = await core.safeApiCall(
        () => client.get(Uri.parse(url), headers: authHeader()),
        defErrMsg,
      );

      return data.fold(
        (l) => dartz.left(Failure.serverFailure(l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) => EquipmentDto.fromJson(e).toDomain())
              .toList();
          return dartz.right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return dartz.left(const Failure.serverFailure(defErrMsg));
    }
  }

  @override
  Future<void> fetchExerciseHistory(String exerciseId) {
    // TODO: implement fetchExerciseHistory
    throw UnimplementedError();
  }

  @override
  Future<dartz.Either<Failure, List<Exercise>>> fetchExercises(
      int start, int end,
      {String? query, String? equipment, String? muscle}) async {
    const String defErrMsg = 'Could not fetch exercises';
    try {
      final searchCondition =
          query != null ? '(lower(name) LIKE "%${query.toLowerCase()}%")' : '';
      final equipmentCondition =
          equipment != null && equipment.isNotEmpty ? '(tTTEquipment=\'$equipment\')' : '';
      final muscleCondition = muscle != null && muscle.isNotEmpty ? '(tTTMuscles=\'$muscle\')' : '';
      final conditions = [searchCondition, equipmentCondition, muscleCondition]
          .where((element) => element.isNotEmpty)
          .join(' or ');
      final _where = conditions.isNotEmpty ? '_where=$conditions' : '';

      final url =
          '${Constants.jsonBaseUrl}/${Entities.exercise}?_startRow=$start&_endRow=$end&$_where';
      log(url);
      final data = await core.safeApiCall(
        () => client.get(Uri.parse(url), headers: authHeader()),
        defErrMsg,
      );

      return data.fold(
        (l) => dartz.left(Failure.serverFailure(l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) => ExerciseDto.fromJson(e).toDomain())
              .toList();
          return dartz.right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return dartz.left(const Failure.serverFailure(defErrMsg));
    }
  }

  @override
  Future<dartz.Either<Failure, List<Muscle>>> fetchMuscles(
      int start, int end) async {
    const String defErrMsg = 'Could not fetch muscles';
    try {
      final url =
          '${Constants.jsonBaseUrl}/${Entities.muscle}?_startRow=$start&_endRow=$end';
      final data = await core.safeApiCall(
        () => client.get(Uri.parse(url), headers: authHeader()),
        defErrMsg,
      );

      return data.fold(
        (l) => dartz.left(Failure.serverFailure(l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) => MuscleDto.fromJson(e).toDomain())
              .toList();
          return dartz.right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return dartz.left(const Failure.serverFailure(defErrMsg));
    }
  }

  @override
  Future<void> startInstantWorkout(InstantWorkoutForm form) {
    // TODO: implement startInstantWorkout
    throw UnimplementedError();
  }
}
