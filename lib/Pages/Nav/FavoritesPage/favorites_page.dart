import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/Providers/user_provider.dart';
import 'package:food/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../Models/user_model.dart';
import 'Widgets/appbar_favorites.dart';
import 'Widgets/list_favorites.dart';
import 'Widgets/message_favorites.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  User? user;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    user = Provider.of<UserProvider>(context).getUser;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundDefaultColor,
      appBar: const AppbarFavorites(),
      body: user!.appFood.listFavorites.isNotEmpty
          ? ListFavorites(size: size, user: user)
          : const MessageFavorites(),
    );
  }
}
