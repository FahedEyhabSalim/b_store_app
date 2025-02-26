import 'package:flutter/material.dart';


class ProfileRefactor extends StatelessWidget {
  const ProfileRefactor({
    required this.titel,
    required this.iconData,

    super.key,
  });
  final String titel;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [

          IconButton(onPressed: (){}, icon: Icon(iconData,color: Colors.blue,size: 24,)),
          Text(titel,style: TextStyle(fontSize: 16),),
          Spacer(),
          Icon(Icons.arrow_forward_ios,color: Colors.blue,),


        ],
      ),


    );
  }
}