import 'package:flutter/material.dart';

class EmptyCartScreen extends StatefulWidget {
  const EmptyCartScreen({super.key});

  @override
  State<EmptyCartScreen> createState() => _EmptyCartScreenState();
}

class _EmptyCartScreenState extends State<EmptyCartScreen> {
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
            const Image(image: AssetImage('images/Illustration_2.png')),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Cart is Empty!',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              style: TextStyle(fontSize: 16),
              'Let’s find something special for you.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order_placed_screen');
              },
              child: const Text(
                'Start Shopping',
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
