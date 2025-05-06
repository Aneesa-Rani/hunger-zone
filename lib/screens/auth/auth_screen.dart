import 'package:flutter/material.dart';

import '../splashs/splash_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA261),
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 1.8,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ),
                        );
                      },
                      child: Icon(Icons.close_rounded, color: Colors.white),
                    ),
                  ),
                ),
                Image.asset('assets/auth.png', height: 280),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 40,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up or Log In',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Select your preferred method to continue',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  ElevatedButton.icon(
                    icon: Icon(Icons.arrow_forward_outlined),
                    onPressed: () {},
                    label: Text('Next'),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.facebook),
                    onPressed: () {},
                    label: Text('continue with facebook'),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.login),

                    onPressed: () {},
                    label: Text('continue with google'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
