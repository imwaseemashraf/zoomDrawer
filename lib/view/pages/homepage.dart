import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoom_drawer/view/drawer/mainscreen.dart';

import '../drawer/menuscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ZoomDrawerController z = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 50,
      showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      menuScreenTapClose: true,
      // shadowLayer1Color: const Color(0xFFFFFFFF),
      menuBackgroundColor: const Color(0xFF0B5D9D),
      mainScreen: const MainScreen(),
      menuScreen: const MenuScreen(),
      style: DrawerStyle.defaultStyle,
    );
  }
}
