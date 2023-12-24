import 'package:all_of_me/views/card_view.dart';
import 'package:all_of_me/views/otp_confirmation_view.dart';
import 'package:get/get.dart';
import '../service/aws_cognito_service.dart';

class AuthController extends GetxController {
  final AwsCognitoService _cognitoService = AwsCognitoService();

  Future<void> login(String email, String password) async {
    try {
      // Perform login using AWS Cognito
      await _cognitoService.login(email, password);
      // Navigate to the next screen upon successful login
      Get.offAll(const CardView());
    } catch (e) {
      // Handle login error
      Get.snackbar('Login Failed', 'Error: $e');
    }
  }

  Future<void> registrationConfirmed(String email, String opt) async {
    bool registrationConfirmed = false;
    try {
      // Perform login using AWS Cognito
      registrationConfirmed = await _cognitoService.registrationConfirmed(email, opt);
      // Navigate to the next screen upon successful login
      registrationConfirmed ? Get.offAll(const CardView()) : Get.offAll(OTPScreen());
    } catch (e) {
      // Handle login error
      Get.snackbar('Login Failed', 'Error: $e');
    }
  }

}
