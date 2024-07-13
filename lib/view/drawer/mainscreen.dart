import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:gap/gap.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFCE1D1D),
        title:
            const Text("HomePage", style: TextStyle(color: Color(0xFFFFFFFF))),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFFFFFFFF)),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/beautiful-wooden-pathway-going-breathtaking-colorful-trees-forest_181624-5840.jpg?w=1380&t=st=1720838271~exp=1720838871~hmac=3be2b9de76d533475bbecf7bb8a9bfdf2c0c7af383ee433716268051139e5c88"),
              ),
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Beautiful Flowers",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "A flower, nature's vibrant masterpiece, bursts forth with colorful petals. Its delicate fragrance fills the air, attracting bees and butterflies. A symbol of beauty and love, it brings joy to all who behold it.",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
