import 'package:app/views/widgets/customItem.dart';
import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Expanded(
        flex: 2,
        child: CustomItemOne(),
      ),
      Expanded(
          flex: 1,
          child: CustomItemOne(
            color: Colors.white,
          )),
    ]);
  }
}
