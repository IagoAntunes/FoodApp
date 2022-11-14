import 'package:flutter/material.dart';
import 'package:food/Pages/Nav/FavoritesPage/favorites_page.dart';
import 'package:food/Pages/Nav/HistoryPage/history_page.dart';
import 'package:food/Pages/Nav/ProfilePage/profile_page.dart';

import '../../const.dart';
import 'HomePage/home_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _indiceAtual = 0;
  final List<Widget> telas = [
    const HomePage(),
    const FavoritesPage(),
    const ProfilePage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFCFC),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _indiceAtual == 0 ? Icons.house : Icons.house_outlined,
              color:
                  _indiceAtual == 0 ? secondaryOrange : const Color(0xffADADAF),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _indiceAtual == 1 ? Icons.favorite : Icons.favorite_outline,
              color:
                  _indiceAtual == 1 ? secondaryOrange : const Color(0xffADADAF),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _indiceAtual == 2 ? Icons.person : Icons.person_outline,
              color:
                  _indiceAtual == 2 ? secondaryOrange : const Color(0xffADADAF),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _indiceAtual == 3 ? Icons.timer : Icons.timer_outlined,
              color:
                  _indiceAtual == 3 ? secondaryOrange : const Color(0xffADADAF),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
