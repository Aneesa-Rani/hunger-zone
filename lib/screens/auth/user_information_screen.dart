import 'package:flutter/material.dart';
import 'package:hungerzone/screens/auth/verfication_screen.dart';
import '../../widgets/custom_text_field.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  String firstNameText = '';
  String lastNameText = '';
  String ageText = '';
  String locationText = '';

  bool get isFormComplete =>
      firstNameText.isNotEmpty &&
          lastNameText.isNotEmpty &&
          ageText.isNotEmpty &&
          locationText.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFFA261),
        actions: [
          TextButton(
            onPressed: isFormComplete ? () {} : null,
            child: Text(
              'Continue',
              style: TextStyle(
                color: isFormComplete
                    ? const Color(0xFFFFA261)
                    : Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 20),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Color(0xFFFFA261),
                ),
              ),
              const Text(
                'Enter your Information',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Fill in the fields to continue',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: firstNameController,
                labelText: 'First Name',
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    firstNameText = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: lastNameController,
                labelText: 'Last Name',
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    lastNameText = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: ageController,
                labelText: 'Age',
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    ageText = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: locationController,
                labelText: 'Location',
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    locationText = value;
                  });
                },
              ),
              const SizedBox(height: 120),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=> OTPVerificationScreen()));
                },
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
      ),
    );
  }
}
