import 'package:app/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemMpodel});
  final DrawerItemMpodel drawerItemMpodel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemMpodel.icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(drawerItemMpodel.title),
      ),
    );
  }
}
