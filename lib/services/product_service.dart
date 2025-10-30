import '../models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'Gaming PC Ryzen 7',
        category: 'PC',
        price: 1499.99,
        imageUrl: 'https://via.placeholder.com/400x300.png?text=Gaming+PC',
        description: 'Ryzen 7, 32GB RAM, RTX 4070, 1TB NVMe',
      ),
      Product(
        id: '2',
        name: 'Laptop Ultrabook 14"',
        category: 'Laptop',
        price: 1199.0,
        imageUrl: 'https://via.placeholder.com/400x300.png?text=Ultrabook',
        description: 'Intel i7, 16GB RAM, 512GB SSD',
      ),
      Product(
        id: '3',
        name: 'Smartphone Pro',
        category: 'Phone',
        price: 899.0,
        imageUrl: 'https://via.placeholder.com/400x300.png?text=Phone',
        description: '6.7" OLED, 256GB, Triple camera',
      ),
    ];
  }
}
