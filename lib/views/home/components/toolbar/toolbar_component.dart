import 'package:bir_bank_copy_app/statics/shadow_statics.dart';
import 'package:flutter/material.dart';

class ToolbarComponent extends StatelessWidget {
  const ToolbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ToolbarItem(Icons.account_balance_outlined, "Köçürmə"),
          ToolbarItem(Icons.account_balance_wallet_outlined, "Ödənişlər"),
          ToolbarItem(Icons.history_outlined, "Tarixçə"),
        ],
      ),
    );
  }
}

class ToolbarItem extends StatelessWidget {
  final IconData itemIcon;
  final String itemName;
  const ToolbarItem(this.itemIcon, this.itemName, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashFactory: NoSplash.splashFactory,
      child: Container(
        width: 135,
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [ShadowStatics().cardBowShadow]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              itemIcon,
              color: Colors.red.shade600,
              size: 27,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                itemName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
