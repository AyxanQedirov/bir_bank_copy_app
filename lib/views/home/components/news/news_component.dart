import 'package:flutter/material.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.transparent,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AnnounceComponent(
            "https://imageproxy.wolt.com/venue/631b3fbba74954985b10b724/a9a9fb4e-7ba7-11ed-b235-922036b28ac8_111111.png",
          ),
          AnnounceComponent(
            "https://www.az24saat.org/wp-content/uploads/2023/07/Birbank-taksit-kartlarinda-butun-%C9%99m%C9%99liyyatlarda-guz%C9%99st-mudd%C9%99ti-63-gun%C9%99d%C9%99k-oldu.png",
          ),
          AnnounceComponent(
            "https://www.kapitalbank.az/images/news/D/google-pay-birbank-visa-5-azn-cashback1661254642.jpg",
          ),
        ],
      ),
    );
  }
}

class AnnounceComponent extends StatelessWidget {
  late final String imageUrl;
  AnnounceComponent(String url, {super.key}) {
    imageUrl = url;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.red.shade200, width: 3.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
