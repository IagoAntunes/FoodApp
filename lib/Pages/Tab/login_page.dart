import 'package:flutter/material.dart';

import '../Widgets/input_widget.dart';
import 'Widgets/button_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerEmail = TextEditingController();
    TextEditingController controllerPassword = TextEditingController();
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputWidget(
            controller: controllerEmail,
            hintText: 'Email',
            icon: const Icon(Icons.email),
            labelText: 'Email',
          ),
          const SizedBox(
            height: 20,
          ),
          InputWidget(
            icon: const Icon(Icons.password),
            labelText: 'Password',
            hintText: 'Password',
            controller: controllerPassword,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Forgot Passcode?',
              style: TextStyle(
                  color: Color(0xffFA4A0C), fontWeight: FontWeight.bold),
            ),
          ),
          ButtonLogin(
            isLogin: true,
            controllerEmail: controllerEmail,
            controllerPassword: controllerPassword,
          )
        ],
      ),
    );
  }
}
