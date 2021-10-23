import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(
          "Fit-bit",
          style: TextStyle(
            // fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontSize: 24.0,
            color: Color(0xff9A50FD),
          ),
        ),
      ),
      body: Column(
        children: const [
          // Enable this if you want to show chart
          // CircularHomeChart()
        ],
      ),
    );
  }
}
