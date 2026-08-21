import 'package:flutter/material.dart';
import 'package:test1/Home/components/best_seller_list.dart';
import 'package:test1/Home/components/choice_chip.dart';
import 'package:test1/Home/components/home_product_image.dart';
import 'package:test1/Home/components/inspiration_section.dart';
import 'package:test1/Home/components/new_arrivals_list.dart';
import 'package:test1/Models/product_model.dart';
import 'package:test1/Screens/profile_screen.dart';

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
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.redAccent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.info_outline, color: Colors.white),
                        SizedBox(width: 6),
                        Text(
                          "Spend over 50 dollars and get free delivery",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.expand_less_outlined, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 10,
                right: 25,
                left: 25,
                bottom: 30,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Xspeed",
                          style: TextStyle(
                            fontWeight: FontWeight(600),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Icon(Icons.search),
                      SizedBox(width: 5),
                      Icon(Icons.shopping_bag),
                    ],
                  ),

                  homeCategory(),

                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/1246.jpg",
                          width: size.width * 0.9,
                          height: size.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          right: size.width * 0.115,
                          bottom: size.height * 0.05,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04,
                              vertical: size.height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Find out",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Best Sellers",
                          style: TextStyle(
                            fontWeight: FontWeight(600),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 104, 29, 148),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  bestSellerListBuilder(),

                  SizedBox(height: 32),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color.fromARGB(255, 2, 2, 66),
                          const Color.fromARGB(255, 2, 12, 146),
                          const Color.fromARGB(255, 28, 8, 179),
                          const Color.fromARGB(255, 23, 39, 215),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Winter Sale",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Stay cozy with up to 40% off ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "winter clothing and accessories",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 16, left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sports",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "get in shape",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ), // spacing between text and image, matches your screenshot

                        Image.asset(
                          "assets/images/101109b86768316c6968be23b83158abb1d868bf.jpg",
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
