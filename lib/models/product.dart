class Product {
  final int id;
  final String name;
  final String tagline;
  final String price;
  final String image;
  final String description;
  final Map<String, dynamic> specs;

  Product({
    required this.id,
    required this.name,
    required this.tagline,
    required this.price,
    required this.image,
    required this.description,
    required this.specs,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: int.parse(json['id'].toString()),
      name: json['name'],
      tagline: json['tagline'] ?? '',
      price: json['price'],
      image: json['image'],
      description: json['description'] ?? '',
      specs: json['specs'] ?? {},
    );
  }
}
