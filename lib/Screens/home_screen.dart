import 'package:flutter/material.dart';
import 'package:test1/Components/choice_chip.dart';
import 'package:test1/Components/home_bestseller_image.dart';
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
                  //SizedBox(height: 10),
                  homeCategory(),

                  /* Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      cont(name: "Deals"),
                      cont(name: "Clothes"),
                      cont(name: "Shoes"),
                    ],
                  ),*/
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homeBestsellerImage(),
                      /*Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.antiAlias,
                        
                       /* child: Stack(
                          children: [
                            Image.network(
                              "https://img.magnific.com/free-photo/colored-transparent-sunglasses-still-life_23-2150165779.jpg?semt=ais_test_b&w=740&q=80",
                              width: (size.width * 0.5),
                              height: size.height * 0.38,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              right: size.width * 0.032,
                              top: size.height * 0.015,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 24.0,
                              ),
                            ),
                            Positioned(
                              left: size.height * 0.014,
                              top: size.height * 0.015,
                              child: Container(
                                height: 28,
                                width: 46,
                                child: Center(
                                  child: Text(
                                    "-10%",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            Positioned(
                              left: size.height * 0.014,
                              bottom: size.height * 0.015,
                              child: Container(
                                height: 28,
                                width: 46,
                                child: Center(
                                  child: Text(
                                    "New",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Positioned(
                              left: size.height * 0.074,
                              bottom: size.height * 0.015,
                              child: Container(
                                height: 28,
                                width: 80,
                                child: Center(
                                  child: Text(
                                    "Exclusive",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),*/
                        
                      ),*/
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

Widget cont({required name}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
    child: Text(name, style: TextStyle(color: Colors.black, fontSize: 15)),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: BoxBorder.all(color: Colors.black),
    ),
  );
}
