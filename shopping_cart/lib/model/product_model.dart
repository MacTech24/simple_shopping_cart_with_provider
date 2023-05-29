// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String imageURL;
  final String name;
  final String description;
  final double price;
  int quantity = 1;
  Product({
    required this.imageURL,
    required this.name,
    required this.description,
    required this.price,
    this.quantity = 1,
  });

  static final List<Product> productList = [
    Product(
      imageURL: 'assets/images/bag1.jpg',
      name: "Black Hand bag",
      description: "Best Quality bag",
      price: 7000,
    ),
    Product(
      imageURL: 'assets/images/bag2.jpg',
      name: "White Hand bag",
      description: "Best Quality bag",
      price: 6000,
    ),
    Product(
      imageURL: 'assets/images/bag3.jpg',
      name: "Red Hand bag",
      description: "Best Quality bag",
      price: 6500,
    ),
    Product(
      imageURL: 'assets/images/bag4.jpg',
      name: "Purple Hand bag",
      description: "Best Quality bag",
      price: 10000,
    ),
    Product(
      imageURL: 'assets/images/bag5.jpg',
      name: "Pink Hand bag",
      description: "Best Quality bag",
      price: 7900,
    ),
    Product(
      imageURL: 'assets/images/bag6.jpg',
      name: "Orange Hand bag",
      description: "Best Quality bag",
      price: 7500,
    ),
    Product(
      imageURL: 'assets/images/bag6.jpg',
      name: "Check Hand bag",
      description: "Best Quality bag",
      price: 8000,
    ),
  ];
}
