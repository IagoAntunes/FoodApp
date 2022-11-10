import 'package:flutter/material.dart';

class AppbarHomePage extends StatelessWidget with PreferredSizeWidget {
  const AppbarHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: (() {}),
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        IconButton(
          onPressed: (() {}),
          icon: const Icon(Icons.shopping_cart, color: Colors.grey),
        )
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
