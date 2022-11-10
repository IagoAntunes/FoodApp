import 'package:flutter/material.dart';

import '../Models/user_model.dart';

class UserProvider extends ChangeNotifier {
  User? _user;
  UserProvider({Key? key}) : super();
  get getUser => _user;

  setUser(User? user) {
    _user = user;
    notifyListeners();
  }
}
