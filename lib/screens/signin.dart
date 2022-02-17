import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';
import 'package:skill_radar_flutter/screens/admin_home.dart';
import 'package:skill_radar_flutter/screens/signup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAssetColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              children: const [
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Skill Radar",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Please SignIn  to Continue",
                            style:
                                TextStyle(fontSize: 20, color: mainAssetColor),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
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
                                child: TextField(
                                  controller: emailEditingController,
                                  decoration: const InputDecoration(
                                      hintText: "Enter Email ",
                                      prefixIcon: Icon(Icons.email),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //3rd box:
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
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(),
                            child: TextField(
                              controller: passwordEditingController,
                              decoration: const InputDecoration(
                                  hintText: "Enter Password ",
                                  prefixIcon: Icon(Icons.password),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 132.0, vertical: 14.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              primary: mainAssetColor),
                          onPressed: onLoginPressed,
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text("Dont have an account?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: const Text(
                                  "SignUp",
                                  style: TextStyle(
                                      color: mainAssetColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      )),
    );
  }

  onLoginPressed() {
    bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailEditingController.text);
    bool isPasswordValid = passwordEditingController.text.length > 7;
    isEmailValid && isPasswordValid
        ? Navigator.pushNamed(context, '/signup')
        : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Please enter a valid email and password')));
  }
}
