import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      fixedColor: Colors.red,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: "Ana səifə",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: "Market",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_rounded),
          label: "QR",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet_rounded),
          label: "Ödənişlər və köçürmələr",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded),
          label: "Daha çox",
        ),
      ],
    );
  }
}
