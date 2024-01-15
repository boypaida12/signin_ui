// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key, required this.title});


  final String title;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            // ignore: duplicate_ignore
            child: Text(
              widget.title,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'Please sign into your account',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
                    TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromARGB(255, 93, 93, 93),
                      )
                    ),
                  ),
                    TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromARGB(255, 93, 93, 93),
                      ),
                    ),
                    obscureText: true, // Hide password input
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: (){}, 
                      child: Text('Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromARGB(255, 93, 93, 93),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12)
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Montserrat',),
                        ),
                        ),
                    ),
                  ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 56),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Color.fromARGB(255, 93, 93, 93),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Color.fromARGB(255, 93, 93, 93),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color.fromARGB(255, 93, 93, 93),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                    children: [
                      Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12)
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: 
                            AssetImage('assets/images/google-logo.png',
                            ),
                            width: 24,
                            ),
                            SizedBox(width: 8),
                            Text(
                            'Sign in with Google',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Montserrat',),
                          ),
                        ],
                        ),
                      ),
                    ),
                  ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12)
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/apple-logo.png'),
                            width: 24,
                            ),
                            SizedBox(width: 8,),
                            Text(
                            'Sign in with Apple',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Montserrat',),
                          ),
                          ],
                        ),
                        ),
                    ),
                  ],
                  ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14, 
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(onPressed: () {}, 
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14, 
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    ],
                  ),
                ],
                ),
          ),
      ),
      );
  }
}
