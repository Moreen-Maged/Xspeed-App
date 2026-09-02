import 'package:flutter/material.dart';
import 'package:test1/ProductDetails/product_details_screen.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    super.key,
    required this.widget,
    required this.size,
  });

  final ProductDetailsScreen widget;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.product.image,
      width: double.infinity,
      height: size.height * 0.52,
      fit: BoxFit.cover,
    );
  }
}
