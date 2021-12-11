class ProductDetail {
  final int id;
  final double price;
  final String title;
  final String image;
  final String category;
  final String description;

  ProductDetail({
    required this.price,
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) {
    return ProductDetail(
      price: .0 + json['price'],
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      category: json['category'],
    );
  }
}

class ScreenArguments {
  final int id;

  ScreenArguments(this.id);
}
