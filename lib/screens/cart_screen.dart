import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final items = cart.items;

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: items.isEmpty
          ? const Center(child: Text('Cart is empty'))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, i) {
                final it = items[i];
                return ListTile(
                  title: Text(it.product.name),
                  subtitle: Text('Qty: ${it.qty} • \$${(it.product.price * it.qty).toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => cart.remove(it.product.id),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text('Total: \$${cart.total.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    cart.clear();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Order placed')));
                  },
                  child: const Text('Checkout'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
