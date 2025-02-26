import 'package:flutter/material.dart';



class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bottom_navigation_screen');
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.blue,)),
        title: Text('Back',style: TextStyle(color: Colors.blue),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.favorite,color: Colors.red,),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/Image_4.png')),
            SizedBox(height: 50,),
            Row(
              children: [
                Text('Montpellier White',),
                SizedBox(height: 10,),
                Text('Chronograph Watch',),
                Spacer(),
                Text('\$189',style: TextStyle(fontSize: 20),),
                

              ],
            ),


            SizedBox(height:  110,),
            Divider(),

            Text(style:TextStyle(fontSize: 18) ,'Inspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank bangles, the result is timeless.'),

            SizedBox(height: 48,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/shopping_car_screen');

              },
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(285, 50),
                backgroundColor: Color(0xFF586BCA),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
