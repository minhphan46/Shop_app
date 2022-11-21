import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String? id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourite;

  Product({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavourite = false,
  });

  void toggleFavoriteStatus() {
    final oldStatus = isFavourite;
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
