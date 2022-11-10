import 'package:flutter/material.dart';
import 'package:food/Providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../../Models/user_model.dart';

class CardInformation extends StatefulWidget {
  CardInformation({
    super.key,
  });

  @override
  State<CardInformation> createState() => _CardInformationState();
}

class _CardInformationState extends State<CardInformation> {
  User? user;
  @override
  void initState() {
    user = Provider.of<UserProvider>(context, listen: false).getUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Information',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          title: Text(
            user!.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user!.email),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  user!.description,
                ),
              ),
            ],
          ),
          leading: Image.asset('assets/iconProfile.png'),
        ),
      ],
    );
  }
}
