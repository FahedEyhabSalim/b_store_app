import 'package:flutter/material.dart';

class FavouritesPageScreen extends StatefulWidget {
  const FavouritesPageScreen({super.key});

  @override
  State<FavouritesPageScreen> createState() => _FavouritesPageScreenState();
}

class _FavouritesPageScreenState extends State<FavouritesPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
        title: const Text(
          'Back',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          PopupMenuButton(
            offset: Offset(0,40),
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
          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          margin: EdgeInsetsDirectional.only(
                              bottom: index == 5 ? 0 : 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: const [
                            //   BoxShadow(
                            //     offset: Offset(0,0),
                            //     color: Colors.black,
                            //     blurRadius: 6,
                            //   ),
                            // ]
                          ),
                          child: const Row(
                            children: [
                              Image(image: AssetImage('images/Image3.png')),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'Tag Heuer Wristwatch',
                                      style: TextStyle(
                                          fontSize: 16, color: Color(0xFF111111)),
                                    ),
          
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
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
                                              decoration: TextDecoration.lineThrough,
                                                fontSize: 14,
                                                color: Color(0xFFF45959))),
                                      ],
                                    ),
          
                                    // Row(
                                    //   children: [
                                    //     IconButton(
                                    //       onPressed: (){},
                                    //       icon: Icon(Icons.add),
                                    //     ),
                                    //     Text('',
                                    //       style: TextStyle(fontSize: 16),
                                    //     ),
                                    //     IconButton(
                                    //       onPressed: () {
                                    //         setState(() {
                                    //         });
                                    //       },
                                    //       icon: Icon(Icons.remove),
                                    //     ),
                                    //
                                    //   ],
                                    // )
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
                  const Column(
                    children: [
                      Text(
                        'Total Items: 6 Items',
                        style: TextStyle(color: Color(0xFF8FA1B4)),
                      ),
                      Text('Total Price: \$266'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
