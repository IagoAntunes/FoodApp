import 'package:flutter/material.dart';
import 'package:food/Pages/HomePage/home_page.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key, required this.isLogin}) : super(key: key);
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffFA4A0C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => const HomePage()),
            ),
          );
        },
        child: Text(isLogin ? 'Login' : 'Create'),
      ),
    );
  }
}
