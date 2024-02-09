import 'package:all_of_me/constants.dart';
import 'package:all_of_me/views/auth_login_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';


import 'controllers/auth_controller.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  Auth0 auth0 = Auth0(dotenv.env['AUTH0_DOMAIN']!, dotenv.env['AUTH0_CLIENT_ID']!,);

  Get.put(AuthController());

  runApp(MyApp(auth0: auth0));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.auth0});
  final Auth0 auth0;

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
          nextScreen: Auth0LoginScreen(auth0: auth0),
          splashTransition: SplashTransition.scaleTransition,
          splashIconSize: 150,
          )
    );
  }
}

