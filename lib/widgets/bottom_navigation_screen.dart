
import 'package:flutter/material.dart';

import '../secreens/favourites_page_screen.dart';
import '../secreens/home_screen.dart';
import '../secreens/my_profile_screen.dart';
import '../secreens/shopping_cart_screen.dart';
import 'bn_screen.dart';





class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedPageIndex = 0;

  final List<BnScreen> _screens = <BnScreen>[
    const BnScreen(title: 'Home', widget: HomeScreen()),
    const BnScreen(title: 'Cart', widget: ShoppingCartScreen()),
    const BnScreen(title: 'Favourite', widget: FavouritesPageScreen()),
    const BnScreen(title: 'Profile', widget: MyProfileScreen()),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: _screens[_selectedPageIndex].widget,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        onTap: (int selectedPageIndex) {
          setState(() => _selectedPageIndex = selectedPageIndex);
        },
        showSelectedLabels: true,

        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(

            // security_outlined

              backgroundColor: Colors.grey,
              activeIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart),
              label: 'Cart'),
          BottomNavigationBarItem(

              backgroundColor: Colors.grey,
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite),
              label: 'Favourite'),

          BottomNavigationBarItem(

              backgroundColor: Colors.grey,
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person),
              label: 'Profile'),

        ],
      ),


    );
  }
}
