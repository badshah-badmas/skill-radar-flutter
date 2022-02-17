import 'package:flutter/material.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  _ProviderHomeState createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Text(
          "Welcome to Provider Home",
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
