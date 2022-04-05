import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (ctx, idx) {
          return ListTile(
            leading: const CircleAvatar(
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
          );
        },
        itemCount: 8,
      ),
    );
  }
}
