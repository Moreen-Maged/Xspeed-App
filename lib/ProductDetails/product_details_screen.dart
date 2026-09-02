import 'package:flutter/material.dart';
import 'package:test1/Home/components/for_you_list_builder.dart';
import 'package:test1/Home/components/jackets_list_and_grid.dart';
import 'package:test1/Home/components/see_all.dart';
import 'package:test1/Models/product_model.dart';
import 'package:test1/ProductDetails/ExpansionTiles/material_care_tile_exp.dart';
import 'package:test1/ProductDetails/ExpansionTiles/more_info_tile_exp.dart';
import 'package:test1/ProductDetails/ExpansionTiles/ratings_tile_exp.dart';
import 'package:test1/ProductDetails/ImageStackComponents/image.dart';
import 'package:test1/ProductDetails/ImageStackComponents/image_arrow_ack.dart';
import 'package:test1/ProductDetails/ImageStackComponents/image_share.dart';
import 'package:test1/ProductDetails/ImageStackComponents/image_shopping_bag.dart';
import 'package:provider/provider.dart';
import 'package:test1/Providers/favourite_provider.dart';
import 'package:test1/Providers/cart_provider.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  //bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isFavorite = context.watch<FavoritesProvider>().isFavorite(
      widget.product.title,
    );
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  DetailsImage(widget: widget, size: size),
                  ImageArrowBack(),
                  ImageShoppinBag(),

                  SizedBox(height: 12),
                  ImageShare(),

                  SizedBox(height: 12),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.85),
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          context.read<FavoritesProvider>().toggleFavorite(
                            widget.product,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.product.subtitle,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "\$${widget.product.price}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Divider(thickness: 1),

                    MoreInfoTileExp(),
                    const Divider(thickness: 1),

                    MaterialCareTileExp(),
                    const Divider(thickness: 1),

                    RatingsTileExp(),
                    Divider(thickness: 1),
                    SizedBox(height: 16),
                    SeeAll(text: "For you"),
                    SizedBox(height: 10),
                    ForYouListBuilder(),
                    SizedBox(height: 16),
                    SeeAll(text: "Jackets"),
                    SizedBox(height: 16),
                    JacketsListAndGrid(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
            context.read<CartProvider>().addToCart(widget.product);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("${widget.product.subtitle} added to cart!"),
                duration: Duration(seconds: 2),
                backgroundColor: const Color.fromARGB(255, 76, 168, 175),
              ),
            );
          },
          child: const Text(
            "Add to Cart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
