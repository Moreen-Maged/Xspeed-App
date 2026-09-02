import 'package:flutter/material.dart';
import 'package:test1/Models/product_model.dart';

class FavoritesProvider extends ChangeNotifier {
  
  final List<ProductModel> favorites = [];
  List<ProductModel> get favorite =>favorites;
  //so favorite screen can access favorites list later

  bool isFavorite(String title) {
    return favorites.any((item)=> item.title ==title);
  }

  void toggleFavorite(ProductModel product) {
    if (isFavorite(product.title)) {
      favorites.removeWhere((item)=>item.title==product.title);
    } else {
      favorites.add(product); 
    }
    
    
    notifyListeners(); 
  }
}