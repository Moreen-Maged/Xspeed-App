import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/Providers/cart_provider.dart';

class ShoppingCartRow extends StatelessWidget {
  const ShoppingCartRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();
    final cartItems = cartProvider.cartItems;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Shopping Cart",
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        Text(
          "${cartItems.length} Articles",
          style: TextStyle(
            fontWeight: FontWeight(400),
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}