class FoodItem {
  String name;
  String price;
  String image;
  bool isFavorite;
  int quantity;
  int type;

  FoodItem({
    required this.name,
    required this.price,
    required this.image,
    required this.type,
    this.isFavorite = false,
    this.quantity = 0,
  });
}
