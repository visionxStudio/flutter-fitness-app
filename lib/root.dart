import 'package:animations/animations.dart';
import 'package:fitnessapp/ui/components/navigation_bar.dart';
import 'package:fitnessapp/views/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  // Current Screen Index
  int _screenIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (Widget child, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        duration: const Duration(milliseconds: 600),
        child: screens[_screenIndex],
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _screenIndex,
        onItemTap: (int index) {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          setState(() => _screenIndex = index);
        },
      ),
    );
  }

  final List<Widget> screens = [
    const Homescreen(),
    Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.green),
    ),
    Container(),
    Container(),
  ];
}
