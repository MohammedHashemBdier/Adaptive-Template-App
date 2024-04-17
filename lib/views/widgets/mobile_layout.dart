import 'package:app/views/widgets/custom_list_view.dart';
import 'package:app/views/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverGrid(),
        CustomSliverListView(),
      ],
    );
  }
}
