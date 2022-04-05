import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:t2t/features/workouts/presentation/bloc/exercise_list/exercise_list_cubit.dart';
import 'package:t2t/features/workouts/presentation/widget/shimmer_list.dart';

class ExerciseList extends StatefulWidget {
  const ExerciseList({Key? key}) : super(key: key);

  @override
  State<ExerciseList> createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        BlocProvider.of<ExerciseListCubit>(context).fetchMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseListCubit, ExerciseListState>(
      builder: (ctx, state) {
        return state.when(
          initial: () => const CircularProgressIndicator(),
          loading: () => const Expanded(child: ShimmerList()),
          success: (records, hasReachedMax, query, muscle, equipment) {
            if (records.isEmpty) {
              return const Text('No exercises found');
            }

            return Expanded(
              child: ListView.separated(
                controller: _scrollController,
                itemCount: records.length + (hasReachedMax ? 0 : 1),
                separatorBuilder: (ctx, idx) => Divider(),
                itemBuilder: (ctx, idx) {
                  if (idx >= records.length) {
                    return _buildShimmerWidget();
                  }

                  final record = records[idx];

                  return ListTile(
                    title: Text(
                      record.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                    onTap: () {

                    },
                  );
                },
              ),
            );
          },
          failure: (f) => Text(f.message),
        );
      },
    );
  }

  Widget _buildShimmerWidget() {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          child: SizedBox(
            height: 32,
          ),
        ),
        title: Container(
          height: 10,
          color: Colors.white,
        ),
        subtitle: Container(
          height: 6,
          color: Colors.white,
        ),
        trailing: Container(
          height: 24,
          width: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
