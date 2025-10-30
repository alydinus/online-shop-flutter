import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class ProductProvider with ChangeNotifier {
  final _service = ProductService();
  List<Product> _products = [];

  List<Product> get products => _products;

  void loadProducts() {
    _products = _service.getProducts();
    notifyListeners();
  }

  Product? findById(String id) {
    try {
      return _products.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}
