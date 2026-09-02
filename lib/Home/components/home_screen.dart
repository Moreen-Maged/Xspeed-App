import 'package:flutter/material.dart';
import 'package:test1/Home/components/best_seller_list.dart';
import 'package:test1/Home/components/choice_chip.dart';
import 'package:test1/Home/components/for_you_list_builder.dart';
import 'package:test1/Home/components/header_image_container.dart';
import 'package:test1/Home/components/inspiration_section.dart';
import 'package:test1/Home/components/new_arrivals_list.dart';
import 'package:test1/Home/components/one_pic_section.dart';
import 'package:test1/Home/components/outdoor_adventure_list_builder.dart';
import 'package:test1/Home/components/see_all.dart';
import 'package:test1/Home/components/jackets_list_and_grid.dart';
import 'package:test1/Home/components/red_ribbon_row.dart';
import 'package:test1/Home/components/winter_sale_contanier.dart';
import 'package:test1/Home/components/xspeed_row_in_home.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            RedRibbonRow(),

            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 10,
                right: 16,
                left: 16,
                bottom: 30,
              ),
              child: Column(
                children: [
                  XspeedRowInHome(),

                  homeCategory(),

                  SizedBox(height: 5),
                  HeaderImageContainer(size: size),

                  SizedBox(height: 16),
                  SeeAll(text: "Best Sellers"),

                  SizedBox(height: 2),
                  bestSellerListBuilder(),

                  SizedBox(height: 32),
                  WinterSaleContainer(size: size),
                  SizedBox(height: 32),
                  onePicSection(
                    text1: "Sports",
                    text2: "get in shape",
                    imageurl:
                        "assets/images/101109b86768316c6968be23b83158abb1d868bf.jpg",
                    c: Colors.black,
                  ),

                  SizedBox(height: 16),
                  NewArrivalsList(),
                  SizedBox(height: 22),
                  InspirationalSection(
                    images: [
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrnKbPQfGZ3lOygI2WqUAwIf50BB5q0aUKU1gcqPZTWg&s=10",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn2uBdcH09FpK6gTF9V-TdqHQaGk1PkPhuyg69A0AVOQ&s=10",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMp5Bc2GPm2epiJ5qWh5cd6rie-YeXZIpkBk4oGGlZsQ&s=10",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KiisdSWD6XXHorEvopdJDwqggLcNmlCL7ymI9Ev4Jg&s=10",
                    ],
                  ),
                  SizedBox(height: 16),
                  SeeAll(text: "Jackets"),
                  JacketsListAndGrid(),
                  onePicSection(
                    text1: "Outdoors",
                    text2: "Gear up for your next adventure",
                    imageurl: "assets/images/image.png",
                    c: Color(0xff1C4D1B),
                  ),
                  OutdoorAdventureListBuilder(),
                  SizedBox(height: 32),
                  SeeAll(text: "For you"),
                  SizedBox(height: 10),
                  ForYouListBuilder(),
                  SizedBox(height: 10),
                  Image.asset("assets/images/Spotlight.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





