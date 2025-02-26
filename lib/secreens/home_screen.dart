import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue),
          title: const Text(
            'Select from categories ',
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Icon(Icons.search_rounded),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Watches',
                        style: TextStyle(color: Color(0XFF586BCA)),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(73, 46),
                        backgroundColor: const Color(0XFFFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Bracelets',
                        style: TextStyle(color: Color(0XFF586BCA)),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(77, 47),
                        backgroundColor: const Color(0XFFFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Straps',
                        style: TextStyle(color: Color(0XFF586BCA)),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(69, 46),
                        backgroundColor: const Color(0XFFFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Set',
                        style: TextStyle(color: Color(0XFF586BCA)),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(69, 46),
                        backgroundColor: const Color(0XFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text(
                    'Most Selling',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF586BCA)),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 211,
                ),
                child: GridView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            childAspectRatio: 211 / 140),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/product_details_screen');
                        },
                        child: Container(
                          child: const Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                      image: AssetImage('images/Image_2.png')),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bracelets',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFF586BCA)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Black Rope Bracelet',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'USD29',
                                        style:
                                            TextStyle(color: Color(0xFF8FA1B4)),
                                      ),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Text(
                                        'USD38',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Color(0xFFF45959)),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text(
                    'Recent Added',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF586BCA)),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 211,
                ),
                child: GridView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            childAspectRatio: 211 / 140),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/product_details_screen');
                        },
                        child: Container(
                          child: const Column(
                            children: [
                              Stack(
                                children: [
                                  Image(image: AssetImage('images/Image3.png')),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bracelets',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFF586BCA)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Black Rope Bracelet',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'USD29',
                                        style:
                                            TextStyle(color: Color(0xFF8FA1B4)),
                                      ),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Text(
                                        'USD38',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Color(0xFFF45959)),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ));
  }
}
