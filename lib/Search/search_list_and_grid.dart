import 'package:flutter/material.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Models/product_model.dart';

class SearchListAndGrid extends StatelessWidget {
  SearchListAndGrid({super.key});
  final List<ProductModel> listOfProducts = [
    ProductModel(
      title: "Aero Minimalist",
      subtitle: "Water-Resistant Bag",
      image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&q=80&w=600",
      price: 120,
      beforediscountprice: 150,
      isNew: true,
    ),
    ProductModel(
      title: "Retro Chrono",
      subtitle: "Vintage Leather Watch",
      image:
          "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&q=80&w=600",
      price: 165,
      beforediscountprice: 210,
      isExclusive: true,
    ),
    ProductModel(
      title: "SonicPulse Pro",
      subtitle: "Active Noise-Cancelling Earbuds",
      image:
          "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&q=80&w=600",
      price: 89,
      beforediscountprice: null,
      isNew: true,
    ),
    ProductModel(
      title: "Urban Knit",
      subtitle: "Merino Wool Ribbed Beanie",
      image:
          "https://images.unsplash.com/photo-1576871337632-b9aef4c17ab9?auto=format&fit=crop&q=80&w=600",
      price: 28,
      beforediscountprice: 35,
    ),
    ProductModel(
      title: "Monochrome High",
      subtitle: "Streetwear Canvas Sneakers",
      image:
          "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?auto=format&fit=crop&q=80&w=600",
      price: 95,
      beforediscountprice: 110,
      isExclusive: true,
    ),
    ProductModel(
      title: "Onyx Frame",
      subtitle: "Matte Black Sunglasses",
      image:
          "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&q=80&w=600",
      price: 68,
      beforediscountprice: 85,
    ),
    ProductModel(
      title: "Crafted Bifold",
      subtitle: "Slim RFID-Blocking Wallet",
      image:
          "https://images.unsplash.com/photo-1627123424574-724758594e93?auto=format&fit=crop&q=80&w=600",
      price: 42,
      beforediscountprice: 55,
      isNew: true,
    ),
    ProductModel(
      title: "Nordic Flask",
      subtitle: "750ml Insulated Bottle",
      image:
          "https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&q=80&w=600",
      price: 34,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Sherpa Trail",
      subtitle: "Half-Zip Fleece Pullover",
      image:
          "https://images.unsplash.com/photo-1578587018452-892bacefd3f2?auto=format&fit=crop&q=80&w=600",
      price: 115,
      beforediscountprice: 140,
      isExclusive: true,
    ),
    ProductModel(
      title: "Amber & Bergamot",
      subtitle: "Scented Soy Candle",
      image:
          "https://images.unsplash.com/photo-1603006905003-be475563bc59?auto=format&fit=crop&q=80&w=600",
      price: 26,
      beforediscountprice: null,
      isNew: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: listOfProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        mainAxisExtent: 390,
        childAspectRatio: 0.62,
      ),
      itemBuilder: (context, index) {
        return homeBestsellerImage(product: listOfProducts[index]);
      },
    );
  }
}
