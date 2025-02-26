import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        title: const Text(
          'Back',
          style: TextStyle(color: Color(0xFF586BCA)),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bottom_navigation_screen');
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: PopupMenuButton(
                onCanceled: () {},
                offset: const Offset(0, 40),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text('Sort by price')),
                    const PopupMenuItem(child: Text('Sort by date')),
                    const PopupMenuItem(
                        child: Text(
                      'Remove all items',
                      style: TextStyle(color: Color(0xFFF45959)),
                    )),
                  ];
                }),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsetsDirectional.only(
                          bottom: index == 5 ? 0 : 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Image(image: AssetImage('images/Image_2.png')),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Tag Heuer Wristwatch',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF111111)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  children: [
                                    Text('USD189',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFFA1A1B4))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('USD230',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFFF45959))),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                    ),
                                    const Text(
                                      '',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Text(
                    'Total Items: 4 Items',
                    style: TextStyle(color: Color(0xFF8FA1B4)),
                  ),
                  const Text('Total Price: \$266'),
                  const SizedBox(
                    height: 58,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Proceed to Checkout',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
