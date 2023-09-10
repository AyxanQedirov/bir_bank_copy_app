import 'package:bir_bank_copy_app/statics/shadow_statics.dart';
import 'package:flutter/material.dart';

class CardGroupComponent extends StatelessWidget {
  final String title;
  final List<CardItem> cards;
  const CardGroupComponent(this.title, this.cards, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CardGroupHeaderSide(title),
          CardGroupSide(cards),
        ],
      ),
    );
  }
}

class CardGroupHeaderSide extends StatelessWidget {
  final String title;
  const CardGroupHeaderSide(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 40,
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black38,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {},
            splashFactory: NoSplash.splashFactory,
            child: const Icon(
              Icons.add,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class CardGroupSide extends StatelessWidget {
  final List<CardItem> cards;
  const CardGroupSide(this.cards, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            ShadowStatics().cardBowShadow,
          ]),
      child: Column(
        children: cards,
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String amount;
  final String type;
  final String image;
  const CardItem(this.amount, this.type, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashFactory: NoSplash.splashFactory,
      child: Container(
        height: 70,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade100,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      amount,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      type,
                      style:
                          const TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      image,
                      height: 35,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
