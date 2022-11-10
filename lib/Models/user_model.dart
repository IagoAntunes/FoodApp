import 'package:food/Models/app_model.dart';

class User {
  String name;
  String description;
  String email;
  String password;
  int paymentMethod;

  AppFood appFood;

  User({
    required this.email,
    required this.password,
    required this.name,
    required this.appFood,
    this.paymentMethod = 0,
    this.description = ' Aguy in the world',
  });
}
