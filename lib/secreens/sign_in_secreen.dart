import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  bool _obscure = true;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _emailErrorValue;
  String? _passwordErrorValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = ForgotPassword;
    _passwordTextController=TextEditingController();
    _emailTextController=TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordTextController.dispose();
    _emailTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 80),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
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
                height: 100,
              ),
              TextField(
                controller: _emailTextController,
                onTap: () {},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  errorText: _emailErrorValue ,
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
                        icon: Icon(_obscure
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                          recognizer: _tapGestureRecognizer,
                          text: 'Forgot Password?',
                          style:
                              const TextStyle(fontSize: 12, color: Colors.blue))
                    ])),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () =>performLogin(),
                child: const Text(
                  'Sign In',
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
              SizedBox(
                height: 150,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    // recognizer: _tapGestureRecognizer,
                    text: 'Create an account?',
                    style: const TextStyle(fontSize: 12, color: Colors.blue))
              ]))
            ],
          ),
        ),
      ),
    );
  }

  void ForgotPassword() {
    Navigator.pushNamed(context, '/recover_account_screen');
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    setState(() {
      _emailErrorValue =
      _emailTextController.text.isNotEmpty ? 'Enter email' : null;
      _passwordErrorValue = _passwordTextController.text.isNotEmpty ? 'Enter password' : null;
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
