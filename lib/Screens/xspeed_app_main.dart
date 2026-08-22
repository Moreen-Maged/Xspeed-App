import 'package:flutter/material.dart';
import 'package:test1/Screens/cart_screen.dart';
import 'package:test1/Screens/favourite_screen.dart';
import 'package:test1/Screens/home_screen.dart';
import 'package:test1/Screens/profile_screen.dart';
import 'package:test1/Screens/search_screen.dart';
import 'package:test1/Screens/setting_screen.dart';

class XspeedAppMain extends StatefulWidget {
  const XspeedAppMain({super.key});

  @override
  State<XspeedAppMain> createState() => _XspeedAppMainState();
}

class _XspeedAppMainState extends State<XspeedAppMain> {
  int _currentIndex = 0;

  // Your actual imported screens
  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
