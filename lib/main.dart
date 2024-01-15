import 'package:all_of_me/constants.dart';
import 'package:all_of_me/views/sign_in_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';


import 'controllers/auth_controller.dart';

Future<void> main() async {
  Auth0 auth0 = Auth0(baseUrl: 'https://<YOUR_AUTH0_DOMAIN>', clientId: '<YOUR_CLIENT_ID>');

  await dotenv.load(fileName: ".env");

  Get.put(AuthController());

  runApp(MyApp(auth0: auth0));
}

class MyApp extends StatelessWidget {

  final Auth0 auth0;

  const MyApp({required this.auth0});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'All Of Me',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: splashLogo,
          nextScreen: LoginScreen(),
          splashTransition: SplashTransition.scaleTransition,
          splashIconSize: 150,
          )
    );
  }
}

