import '../models/product.dart';
import '../repositories/in_memory_cache.dart';

class ProductService {
  InMemoryCache _repository = InMemoryCache();

  void createProduct(String name, String image, String category, int price,
      int quantity, bool isOnSale) {
    final model = _repository.create();
    final product = Product.fromModel(model)
      ..name = name
      ..image = image
      ..category = category
      ..price = price
      ..quantity = quantity
      ..isOnSale = isOnSale;
    saveProduct(product);
  }

  void saveProduct(Product product) {
    _repository.update(product.toModel());
  }

  void deleteProduct(Product product) {
    _repository.delete(product.id);
  }

  List<Product> getAllProducts() {
    return _repository
        .getAll()
        .map<Product>((product) => Product.fromModel(product))
        .toList();
  }
}