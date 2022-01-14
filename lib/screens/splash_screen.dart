import 'dart:async';
import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';
import 'package:skill_radar_flutter/screens/user_type_selection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const UserTypeSeletor();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/Union 1.png"),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  color: mainAssetColor,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  "Logo",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
