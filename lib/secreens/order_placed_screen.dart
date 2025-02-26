import 'package:flutter/material.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Image(image: AssetImage('images/Illustration_1.png')),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Order Success!',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              style: TextStyle(fontSize: 16),
              'Thank you for ordering,Your order placed and on theway to your address.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bottom_navigation_screen');
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(285, 50),
                backgroundColor: const Color(0xFF586BCA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
