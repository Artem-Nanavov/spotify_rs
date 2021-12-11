class Product {
  final int id;
  final double price;
  final String title;
  final String image;
  final String category;
  final String description;

  Product({
    required this.price,
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      price: .0 + json['price'],
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      category: json['category'],
    );
  }
}
