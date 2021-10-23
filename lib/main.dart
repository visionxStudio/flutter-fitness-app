import 'package:fitnessapp/root.dart';
import 'package:flutter/material.dart';
import 'package:statusbarz/statusbarz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatusbarzCapturer(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [Statusbarz.instance.observer],
        title: 'Fitness app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Root(),
      ),
    );
  }
}
