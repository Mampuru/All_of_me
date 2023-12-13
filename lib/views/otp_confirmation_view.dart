import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Confirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: otpController,
              decoration: const InputDecoration(labelText: 'Enter OTP'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call the method to verify OTP
                // Get.find<AuthController>().verifyOTP(otpController.text.trim());
              },
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
