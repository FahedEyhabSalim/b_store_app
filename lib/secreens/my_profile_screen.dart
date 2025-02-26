import 'package:flutter/material.dart';

import '../widgets/profile_refactor.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        title: const Text(
          'Back ',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: IconButton(

              onPressed: () {
                // Navigator.pushNamed(context, '/sgn_in_screen');
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              )),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 30,),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Profile Picture.png')),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Tanya Robinson'),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              InkWell(
                  onTap: () {},
                  child: ProfileRefactor(
                    titel: 'Notifications',
                    iconData: Icons.notifications,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              ProfileRefactor(
                titel: 'My Orders',
                iconData: Icons.mode_comment_sharp,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/address_screen');
                },
                child: ProfileRefactor(
                  titel: 'Address',
                  iconData: Icons.location_on_outlined
                  ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/payment_method_screen');
                  },
                  child: ProfileRefactor(
                    titel: 'Payment',
                    iconData: Icons.payment,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/favourites_page_screen');
                },
                child: ProfileRefactor(
                  titel: 'Favourites',
                  iconData: Icons.favorite,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              ProfileRefactor(
                titel: 'Settings',
                iconData: Icons.settings_outlined,
              ),
            ],
          )
        ],
      ),
    );
  }
}
