import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget with PreferredSizeWidget {
  const AppBarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'My Profile',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
