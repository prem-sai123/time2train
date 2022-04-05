// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../features/auth/data/repo/auth_repo_impl.dart' as _i9;
import '../features/auth/domain/repo/auth_repo.dart' as _i8;
import '../features/auth/presentation/bloc/auth/auth_cubit.dart' as _i15;
import '../features/auth/presentation/bloc/sign_in/sign_in_cubit.dart' as _i14;
import '../features/workouts/data/repo/workout_repo_impl.dart' as _i6;
import '../features/workouts/domain/repo/workout_repo.dart' as _i5;
import '../features/workouts/presentation/bloc/equipments/equipments_cubit.dart'
    as _i10;
import '../features/workouts/presentation/bloc/exercise_list/exercise_list_cubit.dart'
    as _i11;
import '../features/workouts/presentation/bloc/muscles/muscles_cubit.dart'
    as _i12;
import '../features/workouts/presentation/bloc/new_instant_workout/new_instant_workout_cubit.dart'
    as _i13;
import '../shared/usecases/app_version_usecase.dart' as _i7;
import 'external_libs_injectable_module.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalsLibsInjectableModule = _$ExternalsLibsInjectableModule();
  gh.lazySingleton<_i3.Client>(() => externalsLibsInjectableModule.client);
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => externalsLibsInjectableModule.gSignIn);
  gh.lazySingleton<_i5.WorkoutRepo>(
      () => _i6.WorkoutRepoImpl(client: get<_i3.Client>()));
  gh.factory<_i7.AppVersionUseCase>(
      () => _i7.AppVersionUseCase(get<_i3.Client>()));
  gh.lazySingleton<_i8.AuthRepo>(() => _i9.AuthRepoImpl(
      client: get<_i3.Client>(), googleSignIn: get<_i4.GoogleSignIn>()));
  gh.factory<_i10.EquipmentsCubit>(
      () => _i10.EquipmentsCubit(repo: get<_i5.WorkoutRepo>()));
  gh.factory<_i11.ExerciseListCubit>(
      () => _i11.ExerciseListCubit(repo: get<_i5.WorkoutRepo>()));
  gh.factory<_i12.MusclesCubit>(
      () => _i12.MusclesCubit(repo: get<_i5.WorkoutRepo>()));
  gh.factory<_i13.NewInstantWorkoutCubit>(
      () => _i13.NewInstantWorkoutCubit(get<_i5.WorkoutRepo>()));
  gh.factory<_i14.SignInCubit>(
      () => _i14.SignInCubit(repo: get<_i8.AuthRepo>()));
  gh.factory<_i15.AuthCubit>(
      () => _i15.AuthCubit(repository: get<_i8.AuthRepo>()));
  return get;
}

class _$ExternalsLibsInjectableModule
    extends _i16.ExternalsLibsInjectableModule {}
