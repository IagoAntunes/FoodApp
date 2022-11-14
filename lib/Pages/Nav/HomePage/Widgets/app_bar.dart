import 'package:flutter/material.dart';
import 'package:food/Pages/Initial/initial_page.dart';
import 'package:food/Pages/Nav/HomePage/cart_page.dart';
import 'package:food/Providers/user_provider.dart';
import 'package:provider/provider.dart';

class AppbarHomePage extends StatelessWidget with PreferredSizeWidget {
  const AppbarHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PopupMenuButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            itemBuilder: ((context) => [
                  PopupMenuItem(
                    value: 0,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ]),
            onSelected: (value) {
              if (value == 0) {
                Provider.of<UserProvider>(context, listen: false).setUser(null);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InitialPage(),
                  ),
                );
              }
            },
          ),
          IconButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            }),
            icon: const Icon(Icons.shopping_cart, color: Colors.grey),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
