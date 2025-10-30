import 'package:flutter/material.dart';
import '../models/product.dart';

class CartItem {
  final String id;
  final Product product;
  int qty;

  CartItem({required this.id, required this.product, this.qty = 1});
}

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  List<CartItem> get items => _items.values.toList();

  double get total => _items.values.fold(0, (sum, it) => sum + it.product.price * it.qty);

  void add(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id]!.qty += 1;
    } else {
      _items[product.id] = CartItem(id: product.id, product: product, qty: 1);
    }
    notifyListeners();
  }

  void remove(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
