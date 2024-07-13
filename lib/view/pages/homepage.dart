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
  @override
  Widget build(BuildContext context) {
    return const ZoomDrawer(
      mainScreen: MainScreen(),
      menuScreen: MenuScreen(),
      style: DrawerStyle.defaultStyle,
    );
  }
}
