import 'package:flutter/material.dart';

import '../auth/auth_screen.dart';
class EnjoyYourMealScreen extends StatefulWidget {
  const EnjoyYourMealScreen({super.key});

  @override
  State<EnjoyYourMealScreen> createState() => _EnjoyYourMealScreenState();
}

class _EnjoyYourMealScreenState extends State<EnjoyYourMealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA261),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.6,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                  ),
                ),
                Image.asset('assets/meal.png', height: 280),
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
                          'Enjoy Your Meal!',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 10,),
                        Text('Your order is on the way to flavor town.\nSit back, relax, and get ready to satisfy your hunger. Bon appétit from all of us at Hunger Zone...',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => const AuthScreen()));
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
