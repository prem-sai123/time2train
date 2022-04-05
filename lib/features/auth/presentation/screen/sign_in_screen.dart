import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/features/auth/presentation/bloc/blocs.dart';
import 'package:t2t/features/auth/presentation/widgets/google_sign_in_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<SignInCubit, SignInState>(
          listener: (ctx, state) {
            state.maybeWhen(
              goToHomePage: () {
                BlocProvider.of<AuthCubit>(context).checkUserSession();
              },
              failure: (f) {
                _showFailureDialog(ctx, f.message);
              },
              orElse: () {},
            );
          },
          builder: (ctx, state) {
            return state.when(
              initial: () => const GoogleSignInButton(),
              loading: () => CircularProgressIndicator(backgroundColor: Theme.of(context).colorScheme.secondary),
              goToHomePage: () => const SizedBox(width: 0, height: 0),
              failure: (f) => const GoogleSignInButton(),
            );
          },
        ),
      ),
    );
  }

  void _showFailureDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) {
        var alertDialog = AlertDialog(
          title: const Text('Uh oh!'),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('CLOSE'),
            )
          ],
        );
        return alertDialog;
      },
    );
  }
}
