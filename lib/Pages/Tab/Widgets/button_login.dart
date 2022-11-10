import 'package:flutter/material.dart';
import 'package:food/Database/database.dart';
import 'package:food/Models/app_model.dart';
import 'package:food/Models/user_model.dart';
import 'package:food/Pages/Nav/navPage.dart';
import 'package:food/Providers/user_provider.dart';
import 'package:provider/provider.dart';

class ButtonLogin extends StatelessWidget {
  ButtonLogin(
      {Key? key,
      required this.isLogin,
      required this.controllerEmail,
      required this.controllerPassword,
      this.controllerName})
      : super(key: key);
  final bool isLogin;

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController? controllerName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

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
          if (isLogin) {
            User? userLogin;
            listUsers.forEach((user) {
              if (user.email == controllerEmail.text.toString() &&
                  user.password == controllerPassword.text.toString()) {
                userLogin = user;
              }
            });
            if (userLogin != null) {
              Provider.of<UserProvider>(context, listen: false).setUser(
                User(
                  name: userLogin!.name,
                  email: userLogin!.email,
                  password: userLogin!.password,
                  appFood: AppFood(listFavorites: []),
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const NavPage()),
                ),
              );
            }
          } else {
            User user = User(
              name: controllerName!.text.toString(),
              email: controllerEmail.text.toString(),
              password: controllerPassword.text.toString(),
              appFood: AppFood(listFavorites: []),
            );
            listUsers.add(user);
            Provider.of<UserProvider>(context, listen: false).setUser(user);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: ((context) => const NavPage()),
              ),
            );
          }
        },
        child: Text(isLogin ? 'Login' : 'Create'),
      ),
    );
  }
}
