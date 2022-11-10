class FoodItem {
  String name;
  String price;
  String image;
  bool isFavorite;

  FoodItem({
    required this.name,
    required this.price,
    required this.image,
    this.isFavorite = false,
  });
}
