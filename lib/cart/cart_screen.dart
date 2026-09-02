import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test1/LoginComponents/button.dart';
import 'package:test1/Screens/xspeed_app_main.dart';
import 'package:test1/cart/shopping_cart_row.dart';
import 'package:test1/cart/xspeed_row_in_cart.dart';
import 'package:test1/Providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();
    final cartItems = cartProvider.cartItems;
    final totalPrice = cartProvider.totalPrice;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 30),
          children: [
            XspeedRowInCart(),
            SizedBox(height: 12),
            ShoppingCartRow(),
            SizedBox(height: 26),
            if (cartItems.isEmpty) ...[
              Lottie.asset("assets/animation/0EKhwz4EDC.json"),
              SizedBox(height: 26),
              Center(
                child: Text(
                  "Cart is empty",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 28),
              button(
                c: Colors.black,
                textcolor: Colors.white,
                borderc: Colors.black,
                txt: "Inspire Me!",
                onPressed: () {
                  context
                      .findAncestorStateOfType<XspeedAppMainState>()
                      ?.changeTab(0);
                },
                vertical: 18,
                horizontal: 7,
              ),
            ] else ...[
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cartItems.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return ListTile(
                    leading: Image.network(
                      item.image,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      item.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(item.subtitle),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "\$${item.price}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            context.read<CartProvider>().removeFromCart(item);
                          },
                          icon: Icon(Icons.delete_outline, color: Colors.red),
                        ),
                      ],
                    ),
                  );
                },
              ),

              SizedBox(height: 30),
              Divider(thickness: 2, color: Colors.black),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$$totalPrice",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
