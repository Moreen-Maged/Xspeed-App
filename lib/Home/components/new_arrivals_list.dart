import 'package:flutter/material.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Models/product_model.dart';

class NewArrivalsList extends StatelessWidget {
  NewArrivalsList({super.key});
  final List<ProductModel> listOfProducts = [
    ProductModel(
      title: "Chucklesome Shoes",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGd0BqQGop8roe_WFPhxNU1ng7Nu18HhqzkZMrkOIIeDsSvRPSXaLldSpY&s=10",
      subtitle: "Nike",
      price: 90,
      beforediscountprice: 100,
    ),
    ProductModel(
      title: "Purrfectly Wild",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSUw2urJzOp5k5FjCND2y-e9jh49qOvxWnItme3AlAFg&s",
      subtitle: "Vans",
      beforediscountprice: null,
      price: 100,
    ),

    ProductModel(
      title: "Cloud Walker",
      image:
          "https://www.karenwalker.com/cdn/shop/files/adidas-japan-shoes-cloud-whitecore-blackgold-metallic-whiteblackgold-metallic-ih5489-0093495001718242187_917a229d-8692-44c3-b727-22d5ef6f024b.jpg?v=1724712607&width=320",
      subtitle: "Adidas",
      price: 110,
      beforediscountprice: 130,
      isNew: true,
    ),
    ProductModel(
      title: "Street Cred",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThtmBi7JCR-SM7qrby4fjSM6CAIJ8fR4qH4wZA5XcJ85ncT0hU8owqQuRo&s=10",
      subtitle: "Puma",
      price: 95,
      isExclusive: true,
      beforediscountprice: null,
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
            padding: EdgeInsets.only(right: 16),
            child: homeBestsellerImage(product: listOfProducts[index]),
          );
        },
      ),
    );
  }
}
