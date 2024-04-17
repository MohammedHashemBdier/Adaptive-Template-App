import 'package:app/views/widgets/customItem.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (
            context,
            index,
          ) {
            return const AspectRatio(aspectRatio: 1, child: CustomItemOne());
          },
        ),
      ),
    );
  }
}
