import '../models/common_model.dart';

class Product {
  int id = 0;
  String name = '';
  String image = '';
  String category = '';
  int price = 0;
  int quantity = 0;
  bool isOnSale = false;

  Product({
    required this.id,
    this.name = '',
    this.image = '',
    this.category = '',
    this.price = 0,
    this.quantity = 0,
    this.isOnSale = false,
  });

  Model toModel() {
    return Model(
      id: id,
      data: {
        'name': name,
        'image': image,
        'category': category,
        'price': price,
        'quantity': quantity,
        'isOnSale': isOnSale,
      },
    );
  }

  Product.fromModel(Model model) {
    id = model.id;
    name = model.data['name'] ?? '';
    image = model.data['image'] ?? '';
    category = model.data['category'] ?? '';
    price = model.data['price'] ?? 0;
    quantity = model.data['quantity'] ?? 0;
    isOnSale = model.data['isOnSale'] ?? false;
  }

  @override
  String toString() {
    return '$id - $name - $image - $category - $price - $quantity - $isOnSale';
  }
}
