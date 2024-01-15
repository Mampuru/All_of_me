import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth0_flutter/auth0_flutter.dart';

import '../main.dart';

class Auth0LoginScreen extends StatelessWidget {
  final Auth0 auth0 = Auth0(baseUrl: 'https://<YOUR_AUTH0_DOMAIN>', clientId: '<YOUR_CLIENT_ID>');

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
        title: Text('Auth0 Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: login,
          child: Text('Login with Auth0'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
