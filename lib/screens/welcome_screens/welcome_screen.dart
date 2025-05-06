import 'package:flutter/material.dart';
import 'package:hungerzone/screens/splashs/splash_screen.dart';
import 'package:hungerzone/screens/welcome_screens/enjoyyourmeal_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA261),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
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
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Image.asset('assets/wc.png', height: 280),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  vertical: 7,
                  horizontal: 18
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'Welcome to the HungerZone',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Text('Fuel your cravings and discover delicious meals around you. Whether you\'re starving or just exploring, Hunger Zone helps you find the perfect bite, fast, fresh, and flavorful...',
                        style: TextStyle(
                            fontSize: 16,
                        fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => const EnjoyYourMealScreen()));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFA261),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
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
