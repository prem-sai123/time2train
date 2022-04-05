import 'package:dartz/dartz.dart';
import 'package:t2t/features/auth/domain/entity/user_details.dart';
import 'package:t2t/shared/exceptions/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserDetails>> signInWithGoogle();

  Future<Either<Failure, bool>> persistUser(UserDetails userDetails);

  Future<Either<Failure, UserDetails>> getPersistedUser();

  Future<Either<Failure, bool>> signOut();

  Future<bool> isLoggedIn();
}