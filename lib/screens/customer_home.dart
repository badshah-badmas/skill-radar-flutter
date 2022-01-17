import 'package:flutter/material.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Text(
              "Welcome to Customer Home",
              style: TextStyle(fontSize: 30,color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
      ),
    );
  }
}
