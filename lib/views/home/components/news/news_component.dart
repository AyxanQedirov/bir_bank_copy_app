import 'package:bir_bank_copy_app/statics/image_statics.dart';
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
          NewsItem(
            ImageStatics().newsPhoto1,
          ),
          NewsItem(
            ImageStatics().newsPhoto2,
          ),
          NewsItem(
            ImageStatics().newsPhoto3,
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  late final String imageUrl;
  NewsItem(String url, {super.key}) {
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
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
