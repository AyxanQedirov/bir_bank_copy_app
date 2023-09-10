import 'package:bir_bank_copy_app/layout/appbar/appbar_component.dart';
import 'package:bir_bank_copy_app/statics/image_statics.dart';
import 'package:bir_bank_copy_app/views/home/components/bonus/bonus_component.dart';
import 'package:bir_bank_copy_app/views/home/components/card_group/card_group_component.dart';
import 'package:bir_bank_copy_app/views/home/components/news/news_component.dart';
import 'package:bir_bank_copy_app/views/home/components/toolbar/toolbar_component.dart';
import 'package:flutter/material.dart';
import '../../layout/bottom_navigation_bar/bottom_navigation_bar_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      appBar: AppBarComponent().getAppBar(),
      bottomNavigationBar: const BottomNavigationBarComponent(),
      body: ListView(
        children: [
          const NewsComponent(),
          const BonusComponent(),
          const ToolbarComponent(),
          CardGroupComponent(
            "Kartlar və hesablar",
            [
              CardItem("2 960,84 ₼", "Kart hesabı", ImageStatics().birbankCard),
              CardItem("0,00 ₼", "Kart hesabı", ImageStatics().umicoCard),
            ],
          ),
          CardGroupComponent(
            "Kreditlər və kredit xətləri",
            [
              CardItem(
                  "10 000,00 ₼", "Kart hesabı", ImageStatics().birbankCard),
            ],
          ),
          CardGroupComponent(
            "Əlavə edilmiş kartlar",
            [
              CardItem("Ziraat Bank ASC", "Ziraat Bank ASC",
                  ImageStatics().placeholderCard),
            ],
          )
        ],
      ),
    );
  }
}
