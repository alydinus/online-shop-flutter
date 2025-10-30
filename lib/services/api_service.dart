import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  final String baseUrl;
  ApiService({required this.baseUrl});

  Future<List<Product>> fetchProducts() async {
    final res = await http.get(Uri.parse('$baseUrl/products'));
    if (res.statusCode == 200) {
      final List data = jsonDecode(res.body);
      return data.map((e) => Product(
        id: e['id'].toString(),
        name: e['name'],
        category: e['category'] ?? 'Unknown',
        price: (e['price'] as num).toDouble(),
        imageUrl: e['imageUrl'] ?? '',
        description: e['description'] ?? '',
      )).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
