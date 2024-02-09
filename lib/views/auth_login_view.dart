import 'package:flutter/material.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../main.dart';

class Auth0LoginScreen extends StatelessWidget {
  Auth0 auth0 = Auth0(dotenv.env['AUTH0_DOMAIN']!, dotenv.env['AUTH0_CLIENT_ID']!,);

  Auth0LoginScreen({super.key, required Auth0 auth0});

  Future<void> login() async {
    try {
      await auth0.webAuth.authorize();
      final userInfo = await auth0.getUserInfo();
      // Handle the user info as needed (e.g., store in state, navigate to home screen)
    } catch (e) {
      print('Auth0 Login Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth0 Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: login,
          child: const Text('Login with Auth0'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
