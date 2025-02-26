import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscure = true;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _mobile_numberTextController;
  String? _emailErrorValue;
  String? _passwordErrorValue;
  String? _mobile_numberErrorValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordTextController=TextEditingController();
    _emailTextController=TextEditingController();
    _mobile_numberTextController=TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _passwordTextController.dispose();
    _emailTextController.dispose();
    _mobile_numberTextController.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0,0),
                          //     color: Colors.black,
                          blurRadius: 6,
                        ),
                      ]),
                  child: SingleChildScrollView(
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('images/Oval.png')),
                            ),
                          ],
                        ),
                        Image(image: AssetImage('images/Shape.png')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                TextField(

                  controller: _emailTextController,
                  onTap: () {},
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorText:_emailErrorValue ,
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _mobile_numberTextController,
                  decoration: InputDecoration(

                    errorText: _mobile_numberErrorValue,
                      hintText: 'Mobile Number',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      prefixIcon: const Icon(Icons.phone_android_sharp)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passwordTextController,
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    errorText: _passwordErrorValue,
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() => _obscure = !_obscure);
                          },
                          icon: Icon(
                              _obscure ? Icons.visibility : Icons.visibility_off)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () =>performLogin(),
                  child: const Text(
                    'Create an account',
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

                SizedBox(height: 125),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        // recognizer: _tapGestureRecognizer,
                          text: 'Already have account?',
                          style: const TextStyle(fontSize: 12, color: Colors.blue))
                    ]))


              ],
            ),
          ),
        ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }


  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty&&_mobile_numberTextController.text.isNotEmpty ) {
      return true;
    }
    setState(() {
      _emailErrorValue =
      _emailTextController.text.isNotEmpty ? 'Enter email' : null;
      _passwordErrorValue = _passwordTextController.text.isNotEmpty ? 'Enter password' : null;
      _mobile_numberErrorValue = _mobile_numberTextController.text.isNotEmpty ? 'Enter mobile number' : null;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Enter , enter required data!'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
    return false;
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/bottom_navigation_screen');
  }
}
