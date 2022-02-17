import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/screens/signin.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

TextEditingController _nameEditingController = TextEditingController();
TextEditingController _emailEditingController = TextEditingController();
TextEditingController _passwordEditingController = TextEditingController();
TextEditingController _confirmPassEditingController = TextEditingController();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAssetColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
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
            flex: 16,
            child: Container(
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
                              "Create an Account to Continue",
                              style: TextStyle(
                                  fontSize: 20, color: mainAssetColor),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          //1st box:
                          TextField(
                            controller: _nameEditingController,
                            decoration: const InputDecoration(
                                hintText: "Enter Full Name ",
                                prefixIcon: Icon(Icons.person),
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          //2nd box:
                          TextField(
                            controller: _emailEditingController,
                            decoration: const InputDecoration(
                                hintText: "Enter Email ",
                                prefixIcon: Icon(Icons.email),
                                // iconColor: mainAssetColor,
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          //3rd box:
                          TextField(
                            controller: _passwordEditingController,
                            decoration: const InputDecoration(
                                hintText: "Enter Password ",
                                prefixIcon: Icon(Icons.password),
                                // iconColor: mainAssetColor,
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          //4rth box:
                          TextField(
                            controller: _confirmPassEditingController,
                            decoration: const InputDecoration(
                              fillColor: Colors.amber,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintText: "Confirm Password ",
                              prefixIcon: Icon(Icons.lock),
                              // iconColor: mainAssetColor,
                              hintStyle: TextStyle(color: Colors.grey),
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
                                    horizontal: 130.0, vertical: 14.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                primary: mainAssetColor),
                            onPressed: onSignUpClick,
                            child: const Text(
                              "SignUp",
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
                              const Text("Already have an account?"),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/signin');
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: mainAssetColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ))
                            ],
                          ),
                        ],
                      )),
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
      )),
    );
  }

  onSignUpClick() {
    bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_emailEditingController.text);
    bool isNameValid =
        RegExp(r'^[a-z]+$').hasMatch(_nameEditingController.text) &&
            _nameEditingController.text.length > 4;
    bool isPasswordValid = _passwordEditingController.text.length > 7 &&
        _passwordEditingController.text == _confirmPassEditingController.text;
    isNameValid && isEmailValid && isPasswordValid
        ? Navigator.push(context,
            MaterialPageRoute(builder: (context1) => const SignInScreen()))
        : ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('please enter valid detailes')));
  }
}
