import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
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
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text('Name'),
              SizedBox(height: 13,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Name',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Address'),
              SizedBox(height: 13,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Address',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              const SizedBox(
                height: 40,
              ),
             Row(
               children: [

                 Column(
                   children: [
                     Text('City'),
                   ],
                 ),

                 Spacer(),

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 80),
                   child: Column(
                     children: [
                       Text('ZIP Code')
                     ],
                   ),
                 )

               ],

             ),
              SizedBox(height: 13,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType:  TextInputType.number,

                      decoration: InputDecoration(
                          hintText: 'City',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.grey))),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType:  TextInputType.number,

                      decoration: InputDecoration(
                          hintText: 'ZIP Code',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.grey))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text('Mobile number'),
              SizedBox(height: 13,),
              TextField(
                keyboardType:  TextInputType.number,

                decoration: InputDecoration(
                    hintText: 'Mobile number',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Next',
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
      ),
    );
  }
}
