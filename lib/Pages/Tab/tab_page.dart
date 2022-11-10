import 'package:flutter/material.dart';
import 'package:food/Pages/Tab/login_page.dart';
import 'package:food/Pages/Tab/signup_page.dart';
import 'package:food/const.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xfff2f2f2),
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: size.height * 0.3,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
          bottom: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4.0,
                color: indicatorTabColor,
              ),
            ),
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            tabs: const [
              Tab(
                icon: Text(
                  'Login',
                ),
              ),
              Tab(
                icon: Text(
                  'Sign-Up',
                ),
              ),
            ],
          ),
          title: Center(child: Image.asset('assets/hatLarge.png')),
        ),
        body: const TabBarView(
          children: [
            LoginPage(),
            SignupPage(),
          ],
        ),
      ),
    );
  }
}
