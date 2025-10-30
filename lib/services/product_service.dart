import '../models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'Gaming PC Ryzen 7',
        category: 'PC',
        price: 1499.99,
        imageUrl: 'https://i.pcmag.com/imagery/reviews/00B2H5RkSOPNPhASt8jGqLq-5-hero-image-gallery..v1744242002.jpg',
        description: 'Ryzen 7, 32GB RAM, RTX 4070, 1TB NVMe',
      ),
      Product(
        id: '2',
        name: 'Laptop Ultrabook 14"',
        category: 'Laptop',
        price: 1199.0,
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxpEof2HNEiLKqcn8aeOS8f85JEdf9LVEXOQ&s',
        description: 'Intel i7, 16GB RAM, 512GB SSD',
      ),
      Product(
        id: '3',
        name: 'Smartphone Pro',
        category: 'Phone',
        price: 899.0,
        imageUrl: 'https://asiastore.kg/image/cache/catalog/1newpage/apple/iphone/iphone16/16basic/ultramarine/611-450x450.jpg',
        description: '6.7" OLED, 256GB, Triple camera',
      ),
    ];
  }
}
