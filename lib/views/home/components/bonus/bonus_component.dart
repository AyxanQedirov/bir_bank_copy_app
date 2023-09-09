import 'package:bir_bank_copy_app/statics/image_statics.dart';
import 'package:flutter/material.dart';

class BonusComponent extends StatelessWidget {
  const BonusComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      color: Colors.transparent,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BonusItem(ImageStatics().edvIcon, "1,48", 20),
          BonusItem(ImageStatics().birBankIcon, "110,48", 30),
          BonusItem(ImageStatics().umicoIcon, "2,76", 28),
          BonusItem(ImageStatics().heartIcon, "10.000", 30),
        ],
      ),
    );
  }
}

class BonusItem extends StatelessWidget {
  final String image;
  final String amount;
  final double imageSize;
  const BonusItem(this.image, this.amount, this.imageSize, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 11),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 243, 243, 245),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: SizedBox(
                height: imageSize,
                width: imageSize,
                child: Image.asset(image),
              ),
            ),
            Text(
              amount,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
