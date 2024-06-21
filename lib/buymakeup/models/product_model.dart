import 'dart:convert';

List<Product> productModelFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productModelToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  int id;
  String brand;
  String name;
  String price;
  String imageLink;
  String description;
  String productType;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    required this.imageLink,
    required this.description,
    required this.productType,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
        brand: json['brand'],
        name: json['name'],
        price: json['price'],
        imageLink: json['image_link'],
        description: json['description'],
        productType: json['product_type'],
    );
  }

  get colors => null;

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "name": name,
        "price": price,
        "imageLink": imageLink,
        "description": description,
        "productType": productType,
      };
}
