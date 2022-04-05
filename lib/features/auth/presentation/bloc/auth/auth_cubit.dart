import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/auth/domain/entity/user_details.dart';
import 'package:t2t/features/auth/domain/repo/auth_repo.dart';
import 'package:t2t/shared/app_logger.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepo repository;

  AuthCubit({required this.repository}) : super(const AuthState.initial());

  void checkUserSession() async {
    try {
      final loggedIn = await repository.isLoggedIn();

      if (loggedIn) {
        final result = await repository.getPersistedUser();
        emit(
          await result.fold(
            (l) => const AuthState.unAuthenticated(),
            (r) async {
              if (!locator.isRegistered<UserDetails>()) {
                locator.registerSingleton<UserDetails>(r);
              }
              return const AuthState.authenticated();
            },
          ),
        );
      } else {
        emit(const AuthState.unAuthenticated());
      }
    } catch (e, st) {
      logError(e, st, '[bloc] authCheckRequested');
      emit(const AuthState.unAuthenticated());
    }
  }

  void loggedOut() async {
    try {
      await repository.signOut();
      await locator.unregister<UserDetails>();
      emit(const AuthState.unAuthenticated());
    } catch (e, st) {
      logError(e, st, '[bloc] signedOut');
      emit(const AuthState.unAuthenticated());
    }
  }
}
