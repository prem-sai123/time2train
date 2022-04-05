import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/auth/domain/entity/user_details.dart';
import 'package:t2t/features/auth/domain/repo/auth_repo.dart';
import 'package:t2t/shared/exceptions/failures.dart';

part 'sign_in_cubit.freezed.dart';

part 'sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final AuthRepo repo;

  SignInCubit({
    required this.repo,
  }) : super(const SignInState.initial());

  void signInWithGoogle() async {
    emit(const SignInState.loading());

    final result = await repo.signInWithGoogle();
    result.fold(
      (l) => emit(SignInState.failure(l)),
      (r) async {
        if (!locator.isRegistered<UserDetails>()) {
          locator.registerSingleton<UserDetails>(r);
        }

        await repo.persistUser(r);

        emit(const SignInState.goToHomePage());
      },
    );
  }
}
