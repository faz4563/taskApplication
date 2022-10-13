// To parse this JSON data, do
//
//     final mobileProducts = mobileProductsFromJson(jsonString);

import 'dart:convert';



MobileProducts mobileProductsFromJson(String str) =>
    MobileProducts.fromJson(json.decode(str));

String mobileProductsToJson(MobileProducts data) => json.encode(data.toJson());

class MobileProducts {
  MobileProducts({
    this.products,
  });

  List<Product>? products;

  factory MobileProducts.fromJson(Map<String, dynamic> json) => MobileProducts(
        products: List<Product>.from(json["Products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Products": List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.images,
    required this.description,
  });

  String? id;
  String? title;
  String? price;
  String? images;
  String? description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        images: json["images"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "images": images,
        "description": description,
      };
}
