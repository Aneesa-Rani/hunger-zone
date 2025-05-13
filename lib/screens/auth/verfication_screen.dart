import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../home/home_screen.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFFFA261);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFFA261),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Verify OTP',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: const Color(0xFFFFA261),
              fontSize: 25,
              fontWeight: FontWeight.bold

            ),),
            const SizedBox(height: 30),
            const Text(
              'Enter the 6-digit code sent to your email or phone',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (_) {},
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 50,
                fieldWidth: 45,
                inactiveColor: Colors.grey.shade300,
                activeColor: primaryColor,
                selectedColor: primaryColor,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Didn’t get the code?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Resend OTP',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
