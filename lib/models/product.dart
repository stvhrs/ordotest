import 'dart:ui';

import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final double actualPrice;
  final String imageUrl;
  final bool used;
  final Color color;
  Product(this.name, this.price, this.actualPrice, this.imageUrl, this.used,this.color);
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['price'],
      json['actualPrice'],
      json['imageUrl'].toString(),
      json['used'], json['color']
    );
  }
}
