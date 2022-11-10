import 'package:flutter/material.dart';
import 'package:food/const.dart';

import 'Widgets/app_bar.dart';
import 'Widgets/button_update.dart';
import 'Widgets/card_information.dart';
import 'Widgets/card_payment_method.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDefaultColor,
      appBar: const AppBarProfile(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardInformation(),
            const SizedBox(height: 50),
            CardPaymentMethod(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ButtonUpdate(),
    );
  }
}
