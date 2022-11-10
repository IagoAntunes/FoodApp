import 'package:flutter/material.dart';
import 'package:food/const.dart';
import 'Widgets/button.dart';
import 'Widgets/head.dart';
import 'Widgets/images.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: prymaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Head(),
            Images(size: size),
            const Button(),
          ],
        ),
      ),
    );
  }
}
