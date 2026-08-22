import 'package:flutter/material.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Models/product_model.dart';

class ForYouListBuilder extends StatelessWidget {
   ForYouListBuilder({super.key});
  final List<ProductModel> listOfProducts = [
    ProductModel(
      title: "BOSS Bottled",
      subtitle: "Hugo Boss Eau de Toilette",
      image: "https://images.unsplash.com/photo-1523293182086-7651a899d37f?auto=format&fit=crop&q=80&w=600",
      price: 110,
      beforediscountprice: 135,
      isNew: true,
      isExclusive: true,
    ),
    ProductModel(
      title: "Midnight Chrono",
      subtitle: "Matte Black Steel Watch",
      image: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&q=80&w=600",
      price: 185,
      beforediscountprice: 220,
      isExclusive: true,
    ),
    ProductModel(
      title: "Aura Soundwaves",
      subtitle: "Over-Ear ANC Headphones",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&q=80&w=600",
      price: 240,
      beforediscountprice: null,
      isNew: true,
    ),
    ProductModel(
      title: "Voyager Holdall",
      subtitle: "Full-Grain Leather Bag",
      image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&q=80&w=600",
      price: 195,
      beforediscountprice: 250,
    ),
    ProductModel(
      title: "Solstice Shades",
      subtitle: "Polarized Aviators",
      image: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&q=80&w=600",
      price: 75,
      beforediscountprice: 95,
      isExclusive: true,
    ),
    ProductModel(
      title: "Elysian Scarf",
      subtitle: "Printed Silk Scarf",
      image: "https://images.unsplash.com/photo-1601924994987-69e26d50dc26?auto=format&fit=crop&q=80&w=600",
      price: 65,
      beforediscountprice: null,
      isNew: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOfProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: homeBestsellerImage(product: listOfProducts[index]),
          );
        },
      ),
    );
  }
}