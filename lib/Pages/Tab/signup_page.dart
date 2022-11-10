import 'package:flutter/material.dart';
import 'package:food/Pages/Tab/Widgets/button_login.dart';
import 'package:food/Pages/Widgets/input_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();
    TextEditingController controllerEmail = TextEditingController();
    TextEditingController controllerPassword = TextEditingController();
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputWidget(
            icon: const Icon(Icons.person),
            hintText: 'Username',
            labelText: 'Name',
            controller: controllerName,
          ),
          InputWidget(
            icon: const Icon(Icons.email),
            hintText: 'Email',
            labelText: 'Email address',
            controller: controllerEmail,
          ),
          InputWidget(
            hintText: 'Password',
            icon: const Icon(Icons.password),
            labelText: 'Password',
            controller: controllerPassword,
          ),
          const ButtonLogin(isLogin: false)
        ],
      ),
    );
  }
}
