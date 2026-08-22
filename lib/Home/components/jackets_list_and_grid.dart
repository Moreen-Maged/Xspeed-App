import 'package:flutter/material.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Models/product_model.dart';

class JacketsListAndGrid extends StatelessWidget {
  JacketsListAndGrid({super.key});
  final List<ProductModel> listOfProducts = [
    ProductModel(
      title: "Giggle Puffer Jacket",
      image:
          "https://i.pinimg.com/236x/d8/44/75/d84475690e496c5649324837923ed67f.jpg",
      subtitle: "Cozy Craziness",
      price: 100,
      isExclusive: true,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Wacky Jean Coat",
      image:
          "https://images.unsplash.com/photo-1551537482-f2075a1d41f2?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8",
      subtitle: "Jean Genies",
      price: 100,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Rustic Brown Jacket",
      image:
          "https://www.saintg.in/cdn/shop/files/front_506bc921-a678-4c02-9c65-a6e26b321bf9.jpg?v=1763207356",
      subtitle: "Nutty Nougat",
      price: 100,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Soft Pink Mantel",
      image:
          "https://the7.io/clothing/wp-content/uploads/sites/62/2019/12/ospan-ali-X2UprmSxIHQ-unsplash.jpg",
      subtitle: "Pink Palace",
      price: 90,
      beforediscountprice: 100,
    ),
    ProductModel(
      title: "Quirky Jean Coat",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToDRmASIwoiIo1y8nO-kpmNoJWq3PLIJnGKKT4t5ejcXNUO2dB",
      subtitle: "The Blue Banter Co.",
      price: 100,
      isExclusive: true,
      beforediscountprice: null,
    ),
    ProductModel(
      title: "Espresso Jacket",
      image:
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRVmc-FXOTMppf_mfuwJc995xeSAPZxP2orTQpfpI0N-wp4mkgc",
      subtitle: "Nutty Nougat",
      price: 100,
      isNew: true,
      beforediscountprice: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listOfProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        mainAxisExtent: 380,
        //childAspectRatio: 0.62,
      ),
      itemBuilder: (context, index) {
        return homeBestsellerImage(product: listOfProducts[index]);
      },
    );
  }
}
