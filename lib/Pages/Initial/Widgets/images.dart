import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/man.png',
              scale: 1.2,
            ),
          ),
          Image.asset(
            'assets/woman.png',
            scale: 1.2,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: size.width,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xffFF470B),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
