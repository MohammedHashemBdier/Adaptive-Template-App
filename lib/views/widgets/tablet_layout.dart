import 'package:app/views/widgets/custom_list.dart';
import 'package:app/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomList(),
        CustomSliverListView(),
      ],
    );
  }
}
