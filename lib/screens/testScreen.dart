import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';
import 'package:skill_radar_flutter/screens/admin_home.dart';
import 'package:skill_radar_flutter/screens/signup.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAssetColor,

    );
  }
}

