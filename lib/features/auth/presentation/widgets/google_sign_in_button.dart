import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/features/auth/presentation/bloc/blocs.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<SignInCubit>(context).signInWithGoogle();
      },
      child: const Text('Sign in with Google')
    );
  }
}
