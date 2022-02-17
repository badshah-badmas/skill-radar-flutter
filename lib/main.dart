import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/screens/customer_home.dart';
import 'package:skill_radar_flutter/screens/signin.dart';
import 'package:skill_radar_flutter/screens/signup.dart';
import 'package:skill_radar_flutter/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignUp(),
        '/signup': (context) => const SignUp(),
        '/signin': (context) => const SignInScreen(),
        '/home': (context) => const CustomerHome(),
      },
      // home: SplashScreen(),
    );
  }
}
