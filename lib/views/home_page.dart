import 'package:app/views/widgets/custom_drawer.dart';
import 'package:app/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width < 900
          ? AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              backgroundColor: Colors.black,
            )
          : null,
      backgroundColor: const Color(0xffDBDBDB),
      body: const HomeViewBody(),
    );
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (
//         context,
//         constrains,
//       ) {
//         if (constrains.maxWidth < 900) {
//           return AppBar(
//             leading: IconButton(
//               icon: const Icon(
//                 Icons.menu,
//                 color: Colors.white,
//                 size: 30,
//               ),
//               onPressed: () {
//                 scaffoldKey.currentState!.openDrawer();
//               },
//             ),
//             backgroundColor: Colors.black,
//           );
//         } else {
//           return const SizedBox();
//         }
//       },
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(56);
// }
