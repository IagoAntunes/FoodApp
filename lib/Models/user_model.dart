class User {
  String name;
  String description;
  String email;
  String password;
  int paymentMethod;

  User({
    required this.email,
    required this.password,
    required this.name,
    this.paymentMethod = 0,
    this.description = ' Aguy in the world',
  });
}
