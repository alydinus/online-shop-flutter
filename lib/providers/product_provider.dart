import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  void loadProducts() {
    // TODO: Implement product loading
    notifyListeners();
  }
}
