import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/screens/admin_home.dart';
import 'package:skill_radar_flutter/screens/customer_home.dart';

import 'package:skill_radar_flutter/screens/provider_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProviderHome()

    );
  }
}
