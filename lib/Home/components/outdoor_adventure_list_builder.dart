import 'package:flutter/material.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Models/product_model.dart';

class OutdoorAdventureListBuilder extends StatelessWidget {
  OutdoorAdventureListBuilder({super.key});

  final List<ProductModel> listOfProducts = [
    ProductModel(
      title: "Wacky Apex Jacket",
      image:
          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSK0VH09JCOOY8ZM6zNFzfqFrR2yT_DDt0VgpbSHQuKem8LorjP",
      subtitle: "Trailblazer's Tickle",
      price: 100,
      isNew: true,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Adventure Watch",
      image:
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR8E5GBzj_4sdORfy-RJv7WmZ7Q_TeCbX5SNjumQlbPY1J3TO8L",
      subtitle: "TimeTrekker",
      price: 90,
      beforediscountprice: 100,
    ),
    ProductModel(
      title: "Torrent Backpack",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe-fEN1BZsZ74LQbREoYyaOLX4VtxdBeQgFF39LXxAyw&s=10",
      subtitle: "Rainstorm Gear",
      price: 100,
      isExclusive: true,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Ridgeline Boots",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLXwHuVb9ZEfyRSzQhCl_5i2PhpwC4XmRFJHu3Xtdmog&s",
      subtitle: "Summit Stride",
      price: 120,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Basecamp Tent",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR11MUiK0Tgw3XeNzdrCjoE8gS1lEhjiT70AKD8qr3AAhOPpTwZm-hE51Y&s=10",
      subtitle: "Wildwood Co.",
      price: 150,
      beforediscountprice: 180,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: const Color(0xFFDFEEDF),
      padding: EdgeInsets.only(top: 16,bottom: 16, left: 10),
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
