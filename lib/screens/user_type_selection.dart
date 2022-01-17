import 'package:flutter/material.dart';
import 'package:skill_radar_flutter/constentValue/asset_value.dart';

class UserTypeSeletor extends StatelessWidget {
  const UserTypeSeletor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext  context) {
    return Scaffold(
      body: SafeArea(

          child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: mainAssetColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Select",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Who you are?",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 2, child: Container()),
          Expanded(child: Container())
        ],
      )
      ),

    );
  }
}
