import 'package:flutter/material.dart';
import 'package:food/Pages/Tab/tab_page.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 70,
        width: 250,
        child: ElevatedButton(
          onPressed: (() {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: ((context) => const TabPage()),
              ),
            );
          }),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            'Get Started',
            style: TextStyle(
              color: Color(0xffFF460A),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
