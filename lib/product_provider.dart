import 'package:flutter/material.dart';
import '../controllers/product_controller.dart';

class ProductProvider extends InheritedWidget {
  final _controller = ProductController();

  ProductProvider({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static ProductController of(BuildContext context) {
    ProductProvider provider = context.dependOnInheritedWidgetOfExactType<ProductProvider>() as ProductProvider;
    return provider._controller;
  }
}