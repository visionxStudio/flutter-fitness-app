import 'package:fitnessapp/constants/strings.dart';
import 'package:flutter/material.dart';

class IntroductionWelcome extends StatelessWidget {
  const IntroductionWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    final AssetsStrings assets = AssetsStrings();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            assets.introductionWelcome,
            fit: BoxFit.cover,
            width: double.infinity,
            height: _height,
          ),
          Container(
            width: double.infinity,
            height: _height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  const Color(0xff101010).withOpacity(0.8),
                  const Color(0xff222020).withOpacity(0.1),
                ],
              ),
            ),
          ),
          const Center(
            child: Text(
              "FitApp",
              style: TextStyle(color: Colors.white, fontSize: 48.0),
            ),
          ),
        ],
      ),
    );
  }
}
