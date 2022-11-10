import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final Widget icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
