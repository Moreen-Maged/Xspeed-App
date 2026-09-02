import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test1/Favourite/favourites_no_row.dart';
import 'package:test1/Favourite/xspeed_row_in_favourite.dart';
import 'package:test1/LoginComponents/button.dart';
import 'package:provider/provider.dart';
import 'package:test1/Providers/favourite_provider.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Screens/xspeed_app_main.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteItems = context.watch<FavoritesProvider>().favorites;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 30),
          children: [
            XspeedRowInFavourite(),
            SizedBox(height: 12),
            FavouritesNoRow(),
            SizedBox(height: 26),
            if (favoriteItems.isEmpty) ...[
              Lottie.asset("assets/animation/Dancing Heart.json"),
              SizedBox(height: 26),
              Center(
                child: Text(
                  "No Favourites Yet!",
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
                txt: "Explore",
                onPressed: () {
                  context
                      .findAncestorStateOfType<XspeedAppMainState>()
                      ?.changeTab(0);
                },
                vertical: 18,
                horizontal: 7,
              ),
            ] else ...[
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favoriteItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  mainAxisExtent: 380,
                ),
                itemBuilder: (context, index) {
                  return homeBestsellerImage(product: favoriteItems[index]);
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
