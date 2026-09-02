import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/Providers/favourite_provider.dart';

class FavouritesNoRow extends StatelessWidget {
  const FavouritesNoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favoriteItems = context.watch<FavoritesProvider>().favorites;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Favourites",
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        Text(
          "${favoriteItems.length} Articles",
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