
import 'package:b_store_app/secreens/address_screen.dart';
import 'package:b_store_app/secreens/empty_cart_screen.dart';
import 'package:b_store_app/secreens/favourites_page_screen.dart';
import 'package:b_store_app/secreens/my_profile_screen.dart';
import 'package:b_store_app/secreens/onboarding_screen.dart';
import 'package:b_store_app/secreens/order_placed_screen.dart';
import 'package:b_store_app/secreens/payment_method_screen.dart';
import 'package:b_store_app/secreens/product_details_screen.dart';
import 'package:b_store_app/secreens/recover_account_screen.dart';
import 'package:b_store_app/secreens/shopping_cart_screen.dart';
import 'package:b_store_app/secreens/sign_in_secreen.dart';
import 'package:b_store_app/secreens/sign_up_screen.dart';
import 'package:b_store_app/widgets/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'secreens/home_screen.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatefulWidget {
  const MyAppp({super.key});

  @override
  State<MyAppp> createState() => _MyApppState();
}

class _MyApppState extends State<MyAppp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding_screen',
      routes: {
        '/onboarding_screen': (context) => const OnboardingScreen(),
        '/sign_up_screen': (context) => const SignupScreen(),
        '/sign_in_screen': (context) => const SignInScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/shopping_car_screen': (context) => const ShoppingCartScreen(),
        '/product_details_screen': (context) => const ProductDetailsScreen(),
        '/recover_account_screen': (context) => const RecoverAccountScreen(),
        '/favourites_page_screen': (context) => const FavouritesPageScreen(),
        '/address_screen': (context) => const AddressScreen(),
        '/bottom_navigation_screen': (context) => const BottomNavigationScreen(),
        '/order_placed_screen': (context) => const OrderPlacedScreen(),
        '/empty_cart_screen': (context) => const EmptyCartScreen(),
        '/payment_method_screen': (context) => const PaymentMethodScreen(),
        '/my_profile_screen': (context) => const MyProfileScreen(),
      },
    );
  }
}
