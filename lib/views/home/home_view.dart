import 'package:bir_bank_copy_app/views/home/components/bonus/bonus_component.dart';
import 'package:bir_bank_copy_app/views/home/components/news/news_component.dart';
import 'package:flutter/material.dart';
import '../../layout/bottom_navigation_bar/bottom_navigation_bar_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      appBar: AppBar(
        foregroundColor: Colors.red,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility_outlined),
              ),
            ],
          ),
        ),
        title: SizedBox(
          height: 50,
          width: 50,
          child: Image.network(
            "https://s3.eu-central-1.amazonaws.com/content.birbank.az/og_image_1080x1080_fa792c76a1.png",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarComponent(),
      body: ListView(
        children: const [
          NewsComponent(),
          BonusComponent(),
        ],
      ),
    );
  }
}
