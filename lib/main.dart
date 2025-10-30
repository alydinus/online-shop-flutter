import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_store/screens/cart_screen.dart';
import 'providers/product_provider.dart';
import 'screens/home_screen.dart';
import 'providers/cart_provider.dart';

void main() {
  runApp(const TechStoreApp());
}

class TechStoreApp extends StatelessWidget {
  const TechStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()..loadProducts()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        routes: {'/cart': (_) => const CartScreen()},
        home: const HomeScreen(),
      ),
    );
  }
}
