import '../models/product.dart';
import '../services/product_service.dart';

class ProductController {
  final ProductService _service = ProductService();

  // This public getter cannot be modified by any other object
  // (kinda like private, but still accessible static, you can see it but no operation allowed)
  List<Product> get plans => List.unmodifiable(_service.getAllProducts());

  void createProduct(String name, String image, String category, int price,
      int quantity, bool isOnSale) {
    _service.createProduct(name, image, category, price, quantity, isOnSale);
  }

  void saveProduct(Product product) {
    _service.saveProduct(product);
  }

  void deleteProduct(Product product) {
    _service.deleteProduct(product);
  }

}