import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';
import 'package:skill_radar_flutter/screens/admin_home.dart';
import 'package:skill_radar_flutter/screens/signup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAssetColor,
      resizeToAvoidBottomInset : false,
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                  child:Container(
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
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
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),),
                      ],
                    ),
                  ),
              ),

              Expanded(
                flex: 12,
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
                                  "Please SignIn  to Continue",
                                  style: TextStyle(fontSize: 20,color:mainAssetColor),
                                ),),
                              SizedBox(height: 35,),
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
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(),
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Password ",
                                            prefixIcon: Icon(Icons.password),
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
                                        horizontal: 132.0, vertical: 14.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0)),
                                    primary: mainAssetColor),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context1) => AdminHome()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Dont have an account?"),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context1) => SignUp()));
                                      },
                                      child: Text(
                                        "SignUp",
                                        style: TextStyle(
                                            color: mainAssetColor,
                                            fontWeight: FontWeight.bold, fontSize: 18),
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
