import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Container()),
            Expanded(
              flex: 5,
              child: Container(
                decoration: const BoxDecoration(
                  color: mainAssetColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
