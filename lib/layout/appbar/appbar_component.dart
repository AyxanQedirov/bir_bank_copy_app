import 'package:flutter/material.dart';

import '../../statics/image_statics.dart';

class AppBarComponent {
  PreferredSizeWidget getAppBar() {
    return AppBar(
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
        child: Image.asset(
          ImageStatics().birBankTransparentIcon,
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
    );
  }
}
