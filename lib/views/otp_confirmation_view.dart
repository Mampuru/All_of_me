import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controlllers/auth_controller.dart';

class OTPScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Confirmation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: otpController,
              decoration: InputDecoration(labelText: 'Enter OTP'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call the method to verify OTP
                // Get.find<AuthController>().verifyOTP(otpController.text.trim());
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
