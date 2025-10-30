import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../providers/cart_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productId;
  const ProductDetailScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductProvider>(context, listen: false).findById(productId)!;
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Expanded(child: Image.network(product.imageUrl, fit: BoxFit.cover, width: double.infinity)),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('\$${product.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 12),
                Text(product.description),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          cart.add(product);
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added to cart')));
                        },
                        icon: const Icon(Icons.add_shopping_cart),
                        label: const Text('Add to cart'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pushNamed('/cart'),
                      child: const Icon(Icons.shopping_cart),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
