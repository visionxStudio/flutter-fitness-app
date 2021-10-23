import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 40.0,
        ),
        // Enable this if you want to show chart
        // CircularHomeChart()
      ],
    );
  }
}
