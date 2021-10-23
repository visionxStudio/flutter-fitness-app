// import 'package:flutter/material.dart';

// class AppBottomNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onItemTap;
//   const AppBottomNavigationBar({
//     Key? key,
//     required this.currentIndex,
//     required this.onItemTap,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Theme.of(context).cardColor,
//       currentIndex: currentIndex,
//       selectedLabelStyle: const TextStyle(
//           fontFamily: 'Product Sans',
//           fontWeight: FontWeight.w600,
//           letterSpacing: 0.2),
//       unselectedLabelStyle: const TextStyle(
//         fontFamily: 'Product Sans',
//         fontWeight: FontWeight.w600,
//         letterSpacing: 0.2,
//       ),
//       iconSize: 22,
//       selectedFontSize: 12,
//       unselectedFontSize: 12,
//       elevation: 6.0,
//       selectedItemColor: const Color(0xff9A50FD),
//       unselectedItemColor: Theme.of(context).iconTheme.color,
//       type: BottomNavigationBarType.fixed,
//       onTap: (int index) => onItemTap(index),
//       items: const [
//         BottomNavigationBarItem(
//             icon: Icon(Icons.ac_unit_outlined), label: "Training"),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.access_alarm), label: "Discover"),
//         BottomNavigationBarItem(icon: Icon(Icons.album), label: "Reports"),
//         BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
//       ],
//     );
//   }
// }

import 'package:fitnessapp/constants/strings.dart';
import 'package:fitnessapp/ui/components/animated_bottom_bar.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onItemTap;
  const AppBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onItemTap,
  }) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  final BottomBarIcons _icons = BottomBarIcons();
  @override
  Widget build(BuildContext context) {
    const activeColor = Color(0xff9A50FD);
    return AnimatedBottomBar(
      selectedIndex: widget.currentIndex,
      animationDuration: const Duration(milliseconds: 600),
      items: [
        AnimatedBottomBarItem(
          // icon: const Icon(Icons.model_training),
          image: _icons.workout,
          title: const Text('Workout'),
          activeColor: activeColor,
        ),
        AnimatedBottomBarItem(
          // icon: const Icon(Icons.search),
          image: _icons.report,
          title: const Text('Reports'),
          activeColor: activeColor,
        ),
        AnimatedBottomBarItem(
          // icon: const Icon(Icons.highlight),
          image: _icons.custom,
          title: const Text('Custom'),
          activeColor: activeColor,
        ),
        AnimatedBottomBarItem(
          // icon: const Icon(Icons.settings),
          image: _icons.settings,
          title: const Text('Settings'),
          activeColor: activeColor,
        ),
      ],
      onItemSelected: widget.onItemTap,
    );
  }
}
