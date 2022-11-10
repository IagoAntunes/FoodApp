import 'package:flutter/material.dart';

class CircleBoxWidget extends StatelessWidget {
  const CircleBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          'assets/icon.png',
          height: 63,
          width: 63,
        ),
      ),
    );
  }
}
