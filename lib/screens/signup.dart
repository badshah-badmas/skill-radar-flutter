import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';

import 'package:skill_radar_flutter/screens/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAssetColor,
      resizeToAvoidBottomInset : false,
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child:Container(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Welcome to",
                          style: TextStyle(fontSize: 25,color: Colors.white),
                        ),),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Skill Radar",
                          style: TextStyle(fontSize: 50,
                              fontWeight: FontWeight.bold,color: Colors.white),
                        ),),

                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 16,
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Create an Account to Continue",
                                  style: TextStyle(fontSize: 20,color: mainAssetColor),
                                ),),

                              SizedBox(height: 10,),

                              //1st box:
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: mainAssetColor,
                                          blurRadius: 30,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(),
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Full Name ",
                                            prefixIcon: Icon(Icons.person),
                                            hintStyle:
                                            TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),

                              //2nd box:
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                          color: mainAssetColor,
                                          blurRadius: 30,
                                          offset: Offset(0, 10))
                                    ]),

                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(),
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Email ",
                                            prefixIcon: Icon(Icons.email),
                                            // iconColor: mainAssetColor,
                                            hintStyle:
                                            TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 10,),

                              //3rd box:
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                          color: mainAssetColor,
                                          blurRadius: 30,
                                          offset: Offset(0, 10))
                                    ]),

                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Password ",
                                            prefixIcon: Icon(Icons.password),
                                            // iconColor: mainAssetColor,
                                            hintStyle:
                                            TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 10,),

                              //4rth box:
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                          color: mainAssetColor,
                                          blurRadius: 30,
                                          offset: Offset(0, 10))
                                    ]),

                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Confirm Password ",
                                            prefixIcon: Icon(Icons.password),
                                            // iconColor: mainAssetColor,
                                            hintStyle:
                                            TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.grey,fontSize: 16),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 130.0, vertical: 14.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0)),
                                    primary: mainAssetColor),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context1) => const SignInScreen()));
                                },
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 40,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Already have an account?"),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context1) => const SignInScreen()));
                                      },
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                          color: mainAssetColor,
                                            fontWeight: FontWeight.w600, fontSize: 18),
                                      ))
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                  ),
                ),
              ),
            ],
          )
     
      ),
    );
  }
}