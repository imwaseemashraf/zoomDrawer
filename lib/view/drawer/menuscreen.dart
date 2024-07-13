import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B5D9D),
      body: Column(
        children: [
          const DrawerHeader(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/wasim1.png"),
                ),
                Gap(10),
                Text(
                  "Waseem Ashraf",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListView(
                children: const [
                  ListTile(
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title:
                        Text("About Us", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title:
                        Text("Payments", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title:
                        Text("Settings", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title: Text("Notifications",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
