import 'package:all_of_me/views/card_view.dart';
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

// Other authentication-related methods can be added here
}
