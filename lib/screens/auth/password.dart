import 'package:flutter/material.dart';
import 'package:hungerzone/screens/auth/user_information_screen.dart';
import '../../widgets/custom_text_field.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController passController = TextEditingController();
  String passText = '';

  @override
  void dispose() {
    passController.dispose();
    super.dispose();
  }

  void goToUserInfoScreen() {
    if (passText.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UserInformationScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isPassEmpty = passText.isEmpty;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFFA261),
        actions: [
          TextButton(
            onPressed: isPassEmpty ? null : goToUserInfoScreen,
            child: Text(
              'Continue',
              style: TextStyle(
                color: isPassEmpty ? Colors.grey[400] : const Color(0xFFFFA261),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 20),
                    child: Icon(
                      Icons.password,
                      size: 60,
                      color: Color(0xFFFFA261),
                    ),
                  ),
                  const Text(
                    'Enter your password',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Enter your password to continue an account',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    controller: passController,
                    labelText: 'Password',
                    noIcon: false,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      setState(() {
                        passText = value;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: goToUserInfoScreen,
                    child: Container(
                      height: 58,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFA261),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
