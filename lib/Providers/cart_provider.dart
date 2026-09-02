import 'package:flutter/material.dart';
import 'package:test1/Models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductModel> _cartItems = [];

  List<ProductModel> get cartItems => _cartItems;

  
  double get totalPrice {
    double total = 0.0;
    for (var item in _cartItems) {
      total += item.price; 
    }
    return total;
  }

  void addToCart(ProductModel product) {
    _cartItems.add(product);
    notifyListeners(); 
  }

  void removeFromCart(ProductModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }
}