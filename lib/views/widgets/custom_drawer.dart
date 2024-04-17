import 'package:app/models/drawer_item_model.dart';
import 'package:app/views/widgets/custom_drawer_iterm_listView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<DrawerItemMpodel> items = [
    DrawerItemMpodel(icon: Icons.home, title: "D A S B O A R D"),
    DrawerItemMpodel(icon: Icons.settings, title: "S E T T I N G S"),
    DrawerItemMpodel(icon: Icons.info, title: "A B O U T"),
    DrawerItemMpodel(icon: Icons.logout, title: "L O G O U T"),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 50,
            ),
          ),
          CustomDrawerItermListView(items: items),
        ],
      ),
    );
  }
}
