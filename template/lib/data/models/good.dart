class Good {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;
  final double? rating;

  Good({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    this.rating,
  });
}
