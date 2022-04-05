import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/workouts/presentation/bloc/new_instant_workout/new_instant_workout_cubit.dart';
import 'package:t2t/features/workouts/presentation/screen/instant_workout_screen.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('TRAINING', style: Theme.of(context).textTheme.caption),
          const SizedBox(height: 6),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => BlocProvider(
                        child: const InstantWorkoutScreen(),
                        create: (ctx) => locator.get<NewInstantWorkoutCubit>(),
                      )));
            },
            child: Text(
              'START NOW',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
