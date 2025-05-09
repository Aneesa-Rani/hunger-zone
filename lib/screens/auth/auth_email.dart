import 'package:flutter/material.dart';
class AuthEmailScreen extends StatefulWidget {
  const AuthEmailScreen({super.key});

  @override
  State<AuthEmailScreen> createState() => _AuthEmailScreenState();
}

class _AuthEmailScreenState extends State<AuthEmailScreen> {
  TextEditingController  emailController = TextEditingController();
  String emailText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFFA261),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text(
                'Continue',
              style: TextStyle(
                color: emailText.isEmpty ? Colors.grey[400] : Color(0xFFFFA261),
              ),
              )
    )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
      child:Column(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15,bottom: 20),
                  child: Image.asset(
                    'assets/profile.png',
                  width: 60,),),
                  Text('what\'s your email?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text('we\'ll check if you have an account',
                  style: TextStyle(
                    fontSize: 14
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                 // CustomTextField()
                ],
              ))
        ],
      ) ,),
    );
  }
}
