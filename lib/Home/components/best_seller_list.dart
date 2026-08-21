import 'package:flutter/material.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Models/product_model.dart';

class bestSellerListBuilder extends StatelessWidget {
  bestSellerListBuilder({super.key});
  
final List<ProductModel> listOfProducts = [
    ProductModel(
      title: "ShineStopper",
      image: "https://img.magnific.com/free-photo/colored-transparent-sunglasses-still-life_23-2150165779.jpg?semt=ais_test_b&w=740&q=80",
      subtitle: "Anti-Glare Sunnies",
      price: 90,
      beforediscountprice: 100,
      isNew: true,
      isExclusive: true,
    ),
    ProductModel(
      title: "Hoofin' It",
      image: "https://xcdn.next.co.uk/common/items/default/default/itemimages/3_4Ratio/product/lge/992499s.jpg?im=Resize,width=750",
      subtitle: "Heels",
      price: 85,
      beforediscountprice: 120,
      isExclusive: true,
    ),
    ProductModel(
      title: "Stride Right",
      image: "https://cdn.4f.com.pl/media/catalog/product/4/F/4FRSS26FSPOF215-10S-P-01-MAIN_1501726.jpg?im=Resize=(450,600)",
      subtitle: "Running Sneakers",
      beforediscountprice: 120,
      price: 99,
      isNew: true,
    ),
    ProductModel(
      title: "Denim Dream",
      image: "https://xcdn.next.co.uk/common/items/default/default/itemimages/3_4Ratio/product/lge/E51857s.jpg?im=Resize,width=750",
      subtitle: "Classic Denim Jacket",
      beforediscountprice: 140,
      price: 115,
    ),
    ProductModel(
      title: "Cap It Off",
      image: "https://www.hologram-clothing.com/cdn/shop/files/Casquettecultureblackface.jpg?v=1744807040&width=1200",
      subtitle: "Streetwear Cap",
      beforediscountprice: null,
      price: 35,
      isNew: true,
      isExclusive: true,
    ),
    ProductModel(
      title: "Tote-al Vibes",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa9Mo-wLrdYtnIJ0xWSZt3EcnF_OqvmokLEAb66NaQHlfU-IYZmfynghw&s=10",
      subtitle: "Canvas Tote Bag",
      beforediscountprice: 60,
      price: 48,
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
            padding: EdgeInsets.only(right: 16),
            child: homeBestsellerImage(product: listOfProducts[index]),
          );
        },
      ),
    );
  }
}
