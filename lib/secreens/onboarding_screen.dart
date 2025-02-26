import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 110,),
            Text('Simply',style: TextStyle(fontSize: 25),),
            SizedBox(height: 12,),
            Text(textAlign: TextAlign.center,'Select your photographer,then go to session!',style: TextStyle(fontSize: 25),),
            SizedBox(height: 84,),
            Image(image: AssetImage('images/Illustration.png')),


            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 15,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/sign_in_screen');


                  }, child: Text('Sign in',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      minimumSize:Size(135, 50),
                      backgroundColor: Color(0xFF586BCA),

                    ),
                  ),

                  SizedBox(width: 15,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/sign_up_screen');

                  }, child: Text('Sign up'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0XFF586BCA)),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      minimumSize:Size(135, 50),
                      backgroundColor: Color(0xFFFFFFFF),

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
