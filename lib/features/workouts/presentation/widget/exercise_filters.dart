import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:t2t/features/workouts/presentation/bloc/exercise_list/exercise_list_cubit.dart';
import 'package:t2t/features/workouts/presentation/bloc/muscles/muscles_cubit.dart';

class ExerciseFilters extends StatefulWidget {
  const ExerciseFilters({Key? key}) : super(key: key);

  @override
  State<ExerciseFilters> createState() => _ExerciseFiltersState();
}

class _ExerciseFiltersState extends State<ExerciseFilters> {
  String? filteredMuscle;
  String? filteredEquipment;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ExerciseListCubit>(context).state.whenOrNull(
      success: (records, _, query, muscle, equipment) {
        filteredMuscle = muscle;
        filteredEquipment = equipment;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Muscles'),
          const SizedBox(height: 6),
          BlocBuilder<MusclesCubit, MusclesState>(builder: (ctx, state) {
            return state.maybeWhen(
              success: (records, _) {
                return Wrap(
                  spacing: 6,
                  children: [
                    ...records
                        .map(
                          (e) => ChoiceChip(
                            label: Text(e.name),
                            selected: e.id == filteredMuscle,
                            padding: const EdgeInsets.all(2),
                            onSelected: (selected) {
                              if (selected) {
                                filteredMuscle = e.id;
                              } else {
                                filteredMuscle = null;
                              }

                              BlocProvider.of<ExerciseListCubit>(context)
                                  .fetchInitial(muscle: filteredMuscle);
                              setState(() {

                              });
                            },
                          ),
                        )
                        .toList(),
                  ],
                );
              },
              orElse: () {
                return Shimmer.fromColors(
                  child: Container(
                    height: 12,
                    color: Colors.white,
                  ),
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                );
              },
            );
          }),
          const SizedBox(height: 12),
          const Text('Equipments'),
          const SizedBox(height: 6),
          BlocBuilder<MusclesCubit, MusclesState>(builder: (ctx, state) {
            return state.maybeWhen(
              success: (records, _) {
                return Wrap(
                  spacing: 6,
                  children: [
                    ...records
                        .map(
                          (e) => ChoiceChip(
                            label: Text(e.name),
                            selected: e.id == filteredEquipment,
                            onSelected: (selected) {
                              if (selected) {
                                filteredEquipment = e.id;
                              } else {
                                filteredEquipment = null;
                              }

                              BlocProvider.of<ExerciseListCubit>(context)
                                  .fetchInitial(equipment: filteredEquipment);
                              setState(() {

                              });
                            },
                          ),
                        )
                        .toList(),
                  ],
                );
              },
              orElse: () {
                return Shimmer.fromColors(
                  child: Container(
                    height: 12,
                    color: Colors.white,
                  ),
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
