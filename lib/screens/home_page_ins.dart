import 'package:flutter/material.dart';
import 'package:ui_instagram/screens/appbar_creen.dart';
import 'package:ui_instagram/screens/post.dart';
import 'list_story.dart';
class HomePageIns extends StatelessWidget {
  const HomePageIns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header_ins(),
            const ListStory(),
            const Post(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_filled), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: ''),
          NavigationDestination(icon: Icon(Icons.video_collection_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.account_box_outlined), label: ''),
        ],
      ),
    );
  }
}
