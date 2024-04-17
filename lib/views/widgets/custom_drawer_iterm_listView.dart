import 'package:app/models/drawer_item_model.dart';
import 'package:app/views/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItermListView extends StatelessWidget {
  const CustomDrawerItermListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemMpodel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItemMpodel: items[index]);
      },
    );
  }
}
