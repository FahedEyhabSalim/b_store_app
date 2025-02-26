import 'package:flutter/material.dart';

class RecoverAccountScreen extends StatefulWidget {
  const RecoverAccountScreen({super.key});

  @override
  State<RecoverAccountScreen> createState() => _RecoverAccountScreenState();
}

class _RecoverAccountScreenState extends State<RecoverAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/sgn_in_screen');
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.blue,)),
        title: Text('Back',style: TextStyle(color: Colors.blue),),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Recoveryour account',style: TextStyle(fontSize: 25),),

            SizedBox(height: 196,),
            TextField(
              onTap: () {},
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter email or phone number ',
                hintStyle: TextStyle(color: Colors.grey,fontSize: 12  ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 20,),
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
