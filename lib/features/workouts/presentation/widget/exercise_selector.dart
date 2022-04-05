import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:t2t/features/workouts/domain/entity/entities.dart';
import 'package:t2t/features/workouts/presentation/bloc/exercise_list/exercise_list_cubit.dart';
import 'package:t2t/features/workouts/presentation/widget/exercise_filters.dart';
import 'package:t2t/features/workouts/presentation/widget/exercist_list.dart';
import 'package:t2t/features/workouts/presentation/widget/shimmer_list.dart';

class ExerciseSelector extends StatefulWidget {
  const ExerciseSelector({
    Key? key,
    this.title = 'Exercises',
    this.onAdded,
  }) : super(key: key);

  final String title;
  final Function(Exercise exercise)? onAdded;

  @override
  State<ExerciseSelector> createState() => _ExerciseSelectorState();
}

class _ExerciseSelectorState extends State<ExerciseSelector> {
  bool _showFilters = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list_outlined),
            onPressed: () {
              setState(() => _showFilters = !_showFilters);
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_showFilters) ...[
            BlocProvider.value(value: BlocProvider.of<ExerciseListCubit>(context),child: const ExerciseFilters()),
            const SizedBox(height: 8),
          ],
          const ExerciseList(),
        ],
      ),
    );
  }
}
