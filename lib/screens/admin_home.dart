import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome ({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Text(
              "Welcome to Admin Home",
              style: TextStyle(fontSize: 30,color: Colors.black,
              fontWeight: FontWeight.bold),
            ),
          )
      ),
    );
  }
}
