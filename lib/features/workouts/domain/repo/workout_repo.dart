import 'package:dartz/dartz.dart' as dartz;
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/shared/exceptions/failures.dart';

abstract class WorkoutRepo {
  Future<dartz.Either<Failure, List<Exercise>>> fetchExercises(int start, int end,
      {String? query, String? equipment, String? muscle});

  Future<dartz.Either<Failure, List<Muscle>>> fetchMuscles(int start, int end);

  Future<dartz.Either<Failure, List<Equipment>>> fetchEquipments(int start, int end);

  Future<void> startInstantWorkout(InstantWorkoutForm form);

  Future<void> completeInstantWorkout(String workoutId);

  Future<void> completeSet(String workoutExerciseId, String setId);

  Future<void> fetchExerciseHistory(String exerciseId);
}
