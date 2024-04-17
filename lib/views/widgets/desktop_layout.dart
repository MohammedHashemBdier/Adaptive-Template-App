import 'package:app/views/widgets/custom_desktop_widget.dart';
import 'package:app/views/widgets/custom_drawer.dart';
import 'package:app/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const Expanded(
          flex: 3,
          child: TabletLayout(),
        ),
        const Expanded(
          flex: 1,
          child: CustomDesktopWidget(),
        ),
      ],
    );
  }
}
